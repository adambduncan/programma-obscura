type DeltaTime = DeltaTime of int

type MIDIFileEvent =
    { DeltaTime: int
      EventData: byte list
      RunningStatus: byte }

let clearTopBit x: byte = x &&& 0b0111_1111uy

let isHighBitSet (x: byte): bool = (x &&& 0b1000_0000uy) > 0uy

let computeMultiByteValue xs =
    xs
    |> List.fold (fun acc x -> (int (clearTopBit x)) + (acc <<< 7)) 0

let rec computeMultiByteValueLength list =
    match list with
    | [] -> 0
    | head :: tail when (isHighBitSet head) -> 1 + computeMultiByteValueLength tail
    | head :: _ when not (isHighBitSet head) -> 1
    | _ -> 0

let computeNewRunningStatus statusByte oldRunningStatus =
    if (statusByte >= 0xF0uy) then 0x0uy
    elif (statusByte >= 0x80uy) then statusByte
    else oldRunningStatus

let computeChannelEventLength statusByte runningStatus =
    let between low high x = (x >= low && x <= high)

    match statusByte with
    | sB when ((between 0x80uy 0xBFuy sB)
               || (between 0xE0uy 0xEFuy sB)) -> 3
    | sB when (between 0xC0uy 0xDFuy sB) -> 2
    | _ -> if (between 0xC0uy 0xDFuy runningStatus) then 1 else 2

let parseMIDIFileEvents (trackData: byte list): MIDIFileEvent list =
    let rec parseMIDIFileEvent (trackDataBytesRemaining: byte list) runningStatus accListofMIDIEvents: MIDIFileEvent list =
        match trackDataBytesRemaining with
        | [] -> accListofMIDIEvents
        | _ ->
            let deltaBytesCount =
                computeMultiByteValueLength trackDataBytesRemaining

            let deltaBytesValue =
                computeMultiByteValue trackDataBytesRemaining.[..(deltaBytesCount - 1)]

            let statusByte =
                trackDataBytesRemaining.[deltaBytesCount]

            let newEventBytesCount =
                match statusByte with
                | 0xFFuy
                | 0xF0uy
                | 0xF7uy ->
                    let statusByteLength = if (statusByte = 0xFFuy) then 2 else 1
                    let multiByteStartIndex = deltaBytesCount + statusByteLength

                    let multiByteValueLength =
                        computeMultiByteValueLength trackDataBytesRemaining.[multiByteStartIndex..]

                    let multiByteEndIndex =
                        multiByteStartIndex + multiByteValueLength - 1

                    let eventDataBytesLength =
                        computeMultiByteValue trackDataBytesRemaining.[multiByteStartIndex..multiByteEndIndex]

                    statusByteLength
                    + multiByteValueLength
                    + eventDataBytesLength
                | s -> computeChannelEventLength s runningStatus

            let newAccEventBytes =
                trackDataBytesRemaining.[deltaBytesCount..(deltaBytesCount + newEventBytesCount - 1)]

            let newRunningStatus =
                computeNewRunningStatus statusByte runningStatus

            let newMIDIFileEvent =
                { DeltaTime = deltaBytesValue
                  EventData = newAccEventBytes
                  RunningStatus = newRunningStatus }

            parseMIDIFileEvent
                trackDataBytesRemaining.[(deltaBytesCount + newEventBytesCount)..]
                newRunningStatus
                (accListofMIDIEvents @ [ newMIDIFileEvent ])

    parseMIDIFileEvent trackData 0x00uy []

let printMIDIFileEvent event =
    let printEventData eventData =
        eventData |> List.iter (fun x -> printf "%02X " x)

    printf "%4i     |    0x%02X     |   " event.DeltaTime event.RunningStatus
    printEventData event.EventData
    printf "\n"





// test/print section

let TrackBytes =
    [ 0x00uy // event 1 - delta length: 1, data length: 6
      0xFFuy
      0x51uy
      0x03uy
      0x07uy
      0xA1uy
      0x20uy
      0x00uy // event 2 - delta length: 1, data length: 7
      0xFFuy
      0x58uy
      0x04uy
      0x04uy
      0x02uy
      0x18uy
      0x08uy
      0x00uy // sysex - delta length: 1, data length: 6
      0xF0uy
      0x04uy
      0x7Fuy
      0x7Fuy
      0x7Fuy
      0x7Fuy
      0x00uy // event 3 - delta length: 1, data length: 3
      0x91uy
      0x3Cuy
      0x64uy
      0x40uy // event 4 - delta length: 1, data length: 3
      0x81uy
      0x3Cuy
      0x00uy
      0x00uy // event 5 - delta length: 1, data length: 3
      0x90uy
      0x43uy
      0x64uy
      0x40uy // event 6 - delta length: 1, data length: 2
      0x43uy
      0x00uy
      0x00uy // event 7 - delta length: 1, data length: 3
      0xB0uy
      0x0Buy
      0x5Auy
      0x01uy // event 8 - delta length: 1, data length: 2
      0x0Buy
      0x5Auy
      0x00uy // event 9 - delta length: 1, data length: 3
      0xFFuy
      0x2Fuy
      0x00uy ]


let testParse = parseMIDIFileEvents TrackBytes

testParse |> List.iter (printMIDIFileEvent)
