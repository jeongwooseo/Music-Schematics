// Jeong Woo Seo
// 11/21/17
// Comp 31 (Two Part Random Music With Tuning + Random Walk)

// two oscillators, melody and harmony
SinOsc s => Pan2 mpan => dac;
TriOsc t => dac;

// we will use these to seperate notes later
0.5 => t.gain;
0.5 => float onGain;
0.0 => float offGain;

// create melody note
72 => int melodyNote;

// while loop
while (true)
{
    // set melody pitch somewhat randomly, with limits
    Math.random2(-3,3) +=> melodyNote;
    // lower limit
    if (melodyNote < 60)
    {
        60 => melodyNote;
    }
    // upper limit
    if (melodyNote > 84)
    {
        84 => melodyNote;
    }
    // set solo SinOsc pitch
    Std.mtof(melodyNote) => s.freq;
    
    // melody has a random pan for each note 
    Math.random2(1,3)*0.2 => float myDur;
    
    // note on time is 80% of duration 
    onGain => s.gain;
    (myDur*0.8)::second => now;
    
    // space between notes is 20% of array duration
    offGain => s.gain;
    (myDur*0.2)::second => now;
}