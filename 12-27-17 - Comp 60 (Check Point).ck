// Jeong Woo Seo
// 12/28/17
// Comp 61 (Checkpoint) 

SinOsc s => dac;

// our function
fun float halfGain( float originalGain )
{
    return (originalGain*0.5);
}

// remember that .gain is a function built into SinOsc
<<< "Full Gain: ", s.gain() >>>;
second => now;

// call halfGain()
halfGain(s.gain()) => s.gain;
<<< "Gain is now half: ", s.gain() >>>;
second => now;