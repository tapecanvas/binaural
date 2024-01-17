# two sines, separated by hz.
- E1 : main volume
- E2 : osc1hz                                     (under 1500Hz)
- E3 : osc2hz / separation                        (40Hz or less)
- K2 : monaural / binaural 
- K3 : mode
---
- inspired by: 
  - [syntherjack - arduino binaural-beat-generator](https://syntherjack.net/binaural-beat-generator-1-5-arduino/)
  - and [sines](https://github.com/aidanreilly/sines)
--- 
- mode 1: 
  -  independent frequencies
  -  sin1Hz E2, sin2Hz E3 
- mode2: 
  -  frequency and offset
  -  sin1&2Hz E2
  -  separation E3 
- mode3: 
  -  note and offset
  -  base note E2
  -  separation E3
 
---
# to do:
- remove excess material
- modes
  - switch from note to hz (make it a float?)
  - separation (cents) - think about this
- fix param menu detune (4 cent increments instead of expected 1 cent) change from gui works as expected.
  - make smaller increments in general
- add individual volume controls (not linked to osc selection - individual knobs)?
- mono/binaural control (pan)

