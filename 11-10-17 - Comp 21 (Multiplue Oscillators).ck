// Jeong Woo Seo 
// 11/7/17
// Comp 21 (Multipule Oscillators)

// sound chain, connect multipule oscillators 
SinOsc s => dac;
SinOsc s2 => dac;

// set frequencies and gains
220 => s.freq;
440 => s2.freq;
1.0 => s.gain;
1.0 => s2.gain;

// advance time 
second => now;