// Jeong Woo Seo 
// 10/30/17
// Comp VI (Commenting)

// make a sound chain ("patch")
SinOsc s => dac;

// prints out prgram name 
<<< "Hello Sin" >>>;

// set volume to 0.6
0.6 => s.gain;
// set frequency to 220.0
220.0 => s.freq;
// play for 1 second
second => now;

0.5 => s.gain; // set volume to 0.5
440.0 => s.freq; // set frequency to 440.0 
2::second => now; // play for two seconds

// comment out this third note for now
/*
0.3 => s.gain;
330 => s.freq;
3::second => now;
*/