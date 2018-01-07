// Jeong Woo Seo 
// 10/31/17
// Comp 10 (Playing notes with integer variables)
// ? The piece should contain 2 instances of audible sound, yet there is only 1

// create sound chain
SinOsc s => dac;

// declare an integer
220 => int myPitch;

// declare two integers for controlling gain
1 => int onGain;
0 => int offGain;

// Play one note
myPitch => s.freq;
onGain => s.gain;
0.3 :: second => now; 

// turn off OSC to seperate notes
offGain => s.gain;
0.3 :: second => now; 

// multiply pitch by 2
2 *=> myPitch; // ? How is this multiplying by 2?

// play another note at a higher pitch
myPitch => s.freq;
onGain => s.freq;
0.3 :: second => now;

// turn off OSC
offGain => s.freq;
0.3 :: second => now; 