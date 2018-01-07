// Jeong Woo Seo 
// 11/15/17
// Comp 27 (Panning)

// sound chain
SinOsc s => dac.left;
SinOsc t => dac.right;

// set frequencies 
220 => s.freq;
361 => t.freq;

// advance time 
second => now;