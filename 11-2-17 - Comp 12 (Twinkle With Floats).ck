// Jeong Woo Seo 
// 10/31/17
// Comp 12 (Twinkle With Floats)

// create sound chain
SinOsc s => dac;

// create float twinkle and float little
220.0 => float twinkle;
1.6818 * twinkle => float little;

// creat in OnGain and offGain
1 => int onGain;
0 => int offGain;

// play one note "twinkle"
twinkle => s.freq;
onGain => s.gain;
0.3 :: second => now;
offGain => s.gain;
0.3 :: second => now;

// play another note of "twinkle"
twinkle => s.freq;
onGain => s.gain;
0.3 :: second => now;
offGain => s.gain;
0.3 :: second => now;

// play one note of "little"
little => s.freq;
onGain => s.gain;
0.3 :: second => now;
offGain => s.gain;
0.3 :: second => now;