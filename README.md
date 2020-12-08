# programma-obscura

**A collection of odds-and-ends, code samples, and other things which don't warrant a separate repository.**

---

[midi-text-dump.c](https://github.com/adambduncan/programma-obscura/blob/master/midi-text-dump/midi-text-dump.c) - This reads MIDI (Musical Instrument Digital Interface) files (files that contain instructions for music synthesizers or notation/sequencing software) and prints a text representation to the console. Work in progress. The main purpose of it is to learn the MIDI file format and brush up on C programming. For more info: [MIDI](https://en.wikipedia.org/wiki/MIDI) on Wikipedia.

Please forgive the monstrously long track parsing function.

To build: `make build`

To use: `make test1` to run using `midi-text-dump/midi-testfile-1.mid` as the input file (or `make test2`, `make test3`, or `make test4` for additional files) 

Consult [Makefile](https://github.com/adambduncan/programma-obscura/blob/master/midi-text-dump/Makefile) for details

---

[FSharpMIDIParse.fsx](https://github.com/adambduncan/programma-obscura/blob/master/FSharpMIDIParse/FSharpMIDIParse.fsx) - F# version of midi-text-dump, or at least the track parsing part.

Even if you're not used to ML-style programming languages (OCaml, F#, Haskell, Standard ML), this version should be easier to understand than the C version above, mainly due to brevity. More refactoring and clarity edits are forthcoming, because the main purpose of this is to document the MIDI file format in a more programmer-friendly way. If you're looking for a MIDI library to use in a project, you will likely want to look elsewhere, but if you want to use it, help yourself.

Just an F# script (.fsx), not a full dotnet project. Need to expand it into a full dotnet project with the same (or better) command-line functionality as the C version.

