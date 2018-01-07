// Jeong Woo Seo 
// 12/26/17 
// Comp 57 (Function With Sound)

// Declare our function here
fun int addOctave( int note )
{
    int result;
    note + 12 => result;
    return result;
}

// Main addOctave Test Program, call and print out result
addOctave(60) => int answer;

// print answer
<<< answer >>>;

// Let's use addOctave for music
SinOsc s => dac;
60 => int myNote; // initial note

Std.mtof(myNote) => s.freq;
second => now;

myNote => addOctave => Std.mtof => s.freq;
second => now; 