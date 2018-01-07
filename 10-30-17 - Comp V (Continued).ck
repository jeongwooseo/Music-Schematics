// Jeong Woo Seo 
// Comp V (Continued)
// 10/30/17

Impulse imp => ResonZ filt => NRev rev => dac;
0.04 => rev.mix;
100.0 => filt.Q => filt.gain; 

while (1) {
    Std.mtof(Math.random2(60,84)) => filt.freq;
    1.0 => imp.next;
    300::ms => now;
}