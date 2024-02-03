Engine_Binaural : CroneEngine {
    var <synth;

    *new { arg context, doneCallback;
        ^super.new(context, doneCallback);
    }

    alloc {
        synth = {
            arg out, sin1Freq, sin2Freq, sin1Amp, sin2Amp;
            
        var sin1 = SinOsc.ar(sin1Freq, 0, sin1Amp); //freq,phase,mul,add
	      var sin2 = SinOsc.ar(sin2Freq, 0, sin2Amp);
	      var final = Limiter.ar(Mix.ar([sin1, sin2]));
            Out.ar(out, final.dup);
        }.play(args: [\out, context.out_b,
	        \sin1Freq, 440,
		      \sin2Freq, 432,
		      
		      \sin1Amp, 0.0,
		      \sin2Amp, 0.0],
		      
             target: context.xg
	);

        
        this.addCommand("sin1Freq", "f", {
            arg msg;
            synth.set(\sin1Freq, msg[1]);
        });
        this.addCommand("sin2Freq", "f", {
            arg msg;
            synth.set(\sin2Freq, msg[1]);
        });
 

        this.addCommand("sin1Amp", "f", {
            arg msg;
            synth.set(\sin1Amp, msg[1]);
        });
        this.addCommand("sin2Amp", "f", {
            arg msg;
            synth.set(\sin2Amp, msg[1]);
        });
    }

    free {
        synth.free;
    }
}