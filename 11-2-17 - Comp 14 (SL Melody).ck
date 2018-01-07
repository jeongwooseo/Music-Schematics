// Jeong Woo Seo 
// 10/31/17
// Comp 14 (SL Melody)

// Sound Chain
SawOsc s => dac;

// create dur values
600 :: ms => dur DurOne;
700 :: ms => dur DurTwo;
150 :: ms => dur DurThree;
155 :: ms => dur DurFour;

// create gain values:
1 => int onGain;
0 => int offGain;

// create integers: one, two
261.6255653006 => float c;
391.9954359817 => float g;
349.2282314330 => float f; 

// play first note
c => s.freq;
onGain => s.gain; 
DurOne => now; 

// play second note
g => s.freq;
onGain => s.gain;
DurTwo => now; 

// play third note
f => s.freq;
onGain => s.gain;
DurThree => now;

// play forth note
g => s.freq;
onGain => s.gain;
DurThree => now; 

// play fifth note
f => s.freq;
onGain => s.gain;
DurFour => now;

// play sixth note
c => s.freq;
onGain => s.gain; 
DurOne => now; 