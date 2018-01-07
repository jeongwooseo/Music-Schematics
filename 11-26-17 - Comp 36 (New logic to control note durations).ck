// Jeong Woo Seo
// 11/25/17
// Comp 36 (New Logic to control note durations)

// sound chain
SqrOsc s => dac;

// gains to seperate our notes
0.7 => float onGain;
0.0 => float offGain;

// declare and initialize array of MIDI notes
[57, 57, 64, 64, 66, 66, 64, 62, 62, 61, 61, 59, 59, 57] @=> int myNotes[];

// quarter note and half note durations
0.3::second => dur q;
0.8::second => dur h;

// declare and intiailze array of MIDI notes 
[q, q, q, q, q, q, h, q, q, q, q, q, q, h] @=> dur myDurs[];

// loop for length of array
for (0 => int i; i < myNotes.cap(); i++)
{
    Std.mtof(myNotes[i]) => s.freq;
    onGain => s.gain;
    myDurs[i] => now;
    
    // turn off our note to seperate from the next
    offGain => s.gain;
    0.2::second => now;
}