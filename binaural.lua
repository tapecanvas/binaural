-- binaural
-- 1.0.0 @tapecanvas
-- llllllll.co/t/????????
--
-- two sines, separated by hz.
-- page 1
-- E2 : osc1 freq
-- E3 : osc1 volume
-- page 2
-- E2 : osc2 freq
-- E3 : osc2 volume
-- 
-- inspired by: 
-- syntherjack - binaural-beat-generator
--
-- TO DO:
-- remove paging
-- key+enc combos for freq+vol (K2)
-- mode switching (E1)
-- monaural / binaural pan (K3)
-- 
-- mode implementation 
-- mode 1: 
--  independent frequencies
--  sin1Hz E2, sin2Hz E3 
-- mode2: 
--  frequency and offset
--  sin1&2Hz E2
--  separation E3 
-- mode3: 
--  note and offset
--  base note E2
--  separation E3

local ez = include "lib/ezscript"
local binaural = include "lib/engine_binaural"

engine.name = 'Binaural'

function init()
--  Setup ezscript
  ez.auto_refresh = true
  
  ez.init({
    { name = "sin 1", e2 = "sin1Freq",    e3 = "sin1Amp" },
    { name = "sin 2", e2 = "sin2Freq",    e3 = "sin2Amp" },
  })

  -- Setup params.
  binaural.add_params()
  params:bang()
  
 

end