// Jeong Woo Seo
// 11/16/17
// Comp 29 (Pan2+Sin+Noise)
//? 15 + 17

// sound chain: white noise to pan2 to dac
Noise n => Pan2 p => dac;

// noise can sound quite loud
0.2 => n.gain;

// infinite loop
while (true)
{
    // oscillate pan between 1.0 and -1.0
    Math.sin(now/second) => p.pan; //? whats going on
    // do it pretty often to make it smooth
    50::ms => now; // whats going on
}