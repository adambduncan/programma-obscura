# programma-obscura

**A collection of odds-and-ends, code samples, and other things which don't warrant a separate repository.**

---

[midi-text-dump.c](https://github.com/adambduncan/programma-obscura/blob/master/midi-text-dump/midi-text-dump.c) - This reads MIDI files (files that contain instructions for music synthesizers or software) and prints a text representation to the console. Work in progress. The main purpose of it is to learn the MIDI file format and brush up on C programming. For more info: [MIDI](https://en.wikipedia.org/wiki/MIDI) on Wikipedia.

To build: `make build`

To use: `make test1` to run using `midi-text-dump/midi-testfile-1.mid` as the input file (or `make test2`, `make test3`, or `make test4` for additional files) 

Consult [Makefile](https://github.com/adambduncan/programma-obscura/blob/master/midi-text-dump/Makefile) for details

---

[FSharpMIDIParse.fsx](https://github.com/adambduncan/programma-obscura/blob/master/FSharpMIDIParse/FSharpMIDIParse.fsx) - F# version of midi-text-dump, or at least the track parsing part. Just an F# script (.fsx), not a full dotnet project

