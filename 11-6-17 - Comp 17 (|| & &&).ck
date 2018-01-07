// Jeong Woo Seo 
// 11/6/17
// Comp 17 (||& &&)
// 27 & 16

// sound chain
SinOsc s => dac;

// set frequency
220 => s.freq;

// set gain
1.0 => s.gain;

// set chance variable
1 => int chance; // ? when int chance is set to 6 why does it not play 

// set dur variable
1 :: second => dur tomato;

// conditional statments 
if ( (chance == 1) || (chance == 5) )
{
    // code goes here
    tomato => now;
}
if ( (chance < 2) && (chance2 >= 6) ) // ? how can chance variable be both less than 2 and great than 6? is this what && means 
{
    // code goes here
    tomato => now;
}