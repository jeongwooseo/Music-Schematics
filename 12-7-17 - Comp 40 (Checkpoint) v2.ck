// Jeong Woo Seo
// 12/7/17
// Comp 40 (Checkpoint) v2

// sound chain 
SinOsc s => Pan2 mpan => dac;
SqrOsc t => Pan2 mpan2 => dac;

// frequency arrays (midi)
[60, 60, 60, 0, 60, 
60, 60, 0, 60, 64, 57, 59, 60] @=> int melNotes[];
[72, 72, 72, 0, 72, 
72, 72, 0, 72, 76, 69, 72, 72] @=> int harmNotes[];

// set gain
1 => int n;
1 => int o;
1 => int onGain;
0 => int offGain;
[n, n, n, offGain, n, n, o, offGain, o, o, o, o, o] @=> int myGain[];

// time values 
200::ms => dur w;
200::ms => dur x;
[w, w, w, w, w, w, x, x, x, x, x, x, x] @=> dur myDurs[];

// for condition
for (0 => int i; i < melNotes.cap(); i++)
{
    // frequency
    Std.mtof(melNotes[i]) => s.freq;
    Std.mtof(harmNotes[i]) => t.freq;
    // print notes
    <<< melNotes[i] >>>; 
    // pan
    Math.random2f(-1.0, 1.0) => mpan.pan;
    Math.random2f(-1.0, 1.0) => mpan2.pan;
    // set gain
    Std.mtof(myGain[i]) => s.gain;
    Std.mtof(myGain[i]) => t.gain;
    // advance time
    myDurs[i] => now;
    // on gain
    onGain => s.gain;
    onGain => t.gain;
    0.7*myDurs[i] => now;
    // off gain
    offGain => s.gain;
    offGain => t.gain;
    0.3*myDurs[i] => now;
}