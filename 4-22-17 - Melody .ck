//Jeong Woo Seo (Fuzzy)
//Melody
//4/22/17

// Sound Network 
SinOsc s => dac;
.01 => s.gain;

[60, 62, 64, 70, 67, 69] @=> int A[];
[.8,.5,.6,.9,.6,.7,.8] @=> float notes[];

// Loop 1
for ( 0 => int i; i < A.cap(); i++)
{
    <<< i , A[i] >>>; // Print Index & Value
    Std.mtof(A[i]) => s.freq; // Midi To Frequency 
    notes [i]::second => now; // Advance Time
}

// Sound Network 2 

SinOsc w => dac;
.01 => w.gain;

// Random Number
Math.random2(10,100) => int t;

// Set Seed 
Math.srandom(100);

// Loop 2 Infinite Random
for ( 0 => int i; i < t; i++ )
{
    //Randomly choose frequency from 50 to 300
    Math.random2f(50.0,300.0) => float r;
    <<< r >>>;
    r => w.freq;
    .5::second => now;
}