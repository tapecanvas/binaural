local binaural = {}

binaural.add_params = function()

    params:add_control("sin1Amp", "sin 1 amp", controlspec.new(0.0, 0.5, 'lin', 0.01, 0.35))
    params:set_action("sin1Amp", function(x)
        engine.sin1Amp(x) end)

    params:add_control("sin2Amp", "sin 2 amp", controlspec.new(0.0, 0.5, 'lin', 0.01, 0.35))
    params:set_action("sin2Amp", function(x)
        engine.sin2Amp(x) end)

    params:add_control("sin1Freq", "sin 1 freq", controlspec.new(1, 2000, 'lin', 0.01, 440, 'hz', 1/(2000/0.1)))
    params:set_action("sin1Freq", function(x)
        engine.sin1Freq(x) end)
      
     params:add_control("sin2Freq", "sin 2 freq", controlspec.new(1, 2000, 'lin', 0.01, 432, 'hz', 1/(2000/0.1)))
    params:set_action("sin2Freq", function(x)
        engine.sin2Freq(x) end)

end

return binaural
    