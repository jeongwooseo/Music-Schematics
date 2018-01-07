//Jeong Woo Seo (Fuzzy)
//Array Control
//4/19/17

// Sound Chain 
SinOsc s => dac;
0.1 => s.gain;

// Declare Array
[60, 40, 50, 60, 70, 80] @=> int A[];
[.5,.10,.4,.4,.6,.8] @=> float notes[];

// Loop
for ( 0 => int i; i < A.cap(); i++ )
{
    <<< i , A[i] >>>; // Print Index & Value 
    Std.mtof(A[i]) => s.freq; // Midi to frequency 
    notes [i]::second => now; // Advance Time 
}

// Loop 2