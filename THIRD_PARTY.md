# third party

`pawnio/IntelMSR.bin` and `pawnio/AMDFamily17.bin` are the signed modules from [PawnIO.Modules](https://github.com/namazso/PawnIO.Modules) 0.2.9 by namazso, LGPL-2.1 (see `pawnio/COPYING`). they get embedded in the exe as is. drop a newer .bin next to the exe and it'll use that instead.

release_0_2_9.zip sha256: `5eb25b128b0940c53c36418dc4f74fba66d5a80e6bf3d95eb0ae62f4d946222d`

the PawnIO driver itself isn't included. the app downloads PawnIO_setup.exe 2.2.0 from the official github release when you turn on cpu temp and only runs it if the sha256 matches `1f519a22e47187f70a1379a48ca604981c4fcf694f4e65b734aaa74a9fba3032`.
