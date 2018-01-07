// Jeong Woo Seo 
// 11/7/17
// Comp 22 (Twinkle Twinkle Little Star)
// ?33, 38 

// sound chain, connect multipule sounds
SinOsc s => dac;
TriOsc t => dac;

// main pitch variable 
110.0 => float melody;

// gain control for our triangle wave melody
0.3 => float onGain;

// use for on and off times
0.3 :: second => dur myDur;

// only play t at first, sweeping pitch upward
onGain => t.gain;

// turns off SinOSc s
0 => s.gain;

// loop until pitch reaches 220
while (melody < 220.0)
{
    melody => t.freq;
    1.0 +=> melody;
    0.01 :: second => now; 
}

// turn sin OSC on, set pitch pitches //? Why is it that this line is play a sine wave, example: when we get rid of 33-35 there should be no effect as SinOsc is does not have a dur set to play 
0.7 => s.gain;
110 => s.freq;

// play two notes, 1st "twinkle" 
for ( 0 => int i; i < 4; i++) { //? When line 33-35 is present loop plays twice, but when lines 33-25 are not it is gone 
    onGain => t.gain;
    myDur => now;
    0 => t.gain;
    myDur => now;
}

// set new pitch;
138.6 => s.freq;
1.5*melody => t.freq;

// play two notes, 2nd "twinkle"
for (0 => int i; i < 4; i++){
    onGain => t.gain;
    myDur => now;
    0 => t.gain;
    myDur => now;
}

// set up and play "star!:
146.8 => s.freq;
1.6837 * melody => t.freq;

// play 2 notes for "little"
for (0 => int i; i < 4; i++){
    onGain => t.gain;
    myDur => now;
    0 => t.gain;
    myDur => now;
}

// set up to play "star!"
138.6 => s.freq;
1.5*melody => t.freq;

// play that note
onGain => t.gain;
second => now;

// sweep both oscillators down to zero
for (330 => int i; i > 0; i--){
    i => t.freq;
    i*1.333 => s.freq;
    0.01 :: second => now;
}