//Jeong Woo Seo (Fuzzy)
//Array Declaration
//4/18/17

// Sound Chain 
SqrOsc s => dac;
0.1 => s.gain;

// Declare Array 
[54, 56, 62, 54, 48, 50, 52] @=> int A[];
[.5,.2,.4,.6,.5,.3,.4] @=> float notes[];

// A.cap() is max number of element in A[]
<<< A.cap () >>>;

// Loop 
for ( 0 => int i; i < A.cap(); i++)
{
    <<< i , A[i] >>>; // Print index & value  
    Std.mtof(A[i]) => s.freq; // Midi to frequency
    notes [i]::second => now; // Advance Time
}