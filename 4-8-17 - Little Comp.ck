// Jeong Woo Seo (Fuzzy)
// Little Comp 
// 4/8/17

//Soundchain
SinOsc s => dac;

// Set Seed
Math.srandom(100);

while ( true )
{
    Math.random2(30, 200) => int i; // generate random
    Math.random2f(.2, .9) => float f;
    <<< i, f >>>;
    i => s.freq;
    f => s.gain;
    .10::second => now;
    
}