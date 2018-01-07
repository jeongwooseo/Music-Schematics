// Jeong Woo Seo 
// 10/31/17
// Comp 13 (Twinkle With Dur Variables)

// create sound chain
SinOsc s => dac;

// create float "twinkle"
220 => float twinkle;

// set durs
0.55 :: second => dur onDur;
0.05 :: second => dur offDur;

// create "onGain" and "offGain"
1 => int onGain;
0 => int offGain;

// Play one note
twinkle => s.freq;
onGain => s.gain;
onDur => now;

// pause
offGain => s.gain;
offDur => now;

// set next note frequency 
1.5 *=> twinkle;

// play another note of "twinkle"
twinkle => s.freq;
onGain => s.gain;
onDur => now;

// pause
offGain => s.gain;
offDur => now;