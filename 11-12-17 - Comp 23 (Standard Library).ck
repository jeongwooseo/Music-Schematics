// Jeong Woo Seo 
// 11/12/17
// Comp 23 (Standard Library)
//? 14 

<<< Std.mtof(60), Std.mtof(62), Std.mtof(64), Std.mtof(65), Std.mtof(67) >>>;

<<< 60 => Std.mtof >>>;

// sound chain
TriOsc t => dac;

// set gain
0.4 => t.gain; //? what is the advantage of keep the gain outside of the control strucutre 

// loop
for (0 => int i; i < 127; i++)
{
    Std.mtof(i) => float Hz; // MIDI to Gertz frequency 
    <<< i, Hz >>>; // print out result
    Hz => t.freq; // update frequency
    200 :: ms => now; 
}