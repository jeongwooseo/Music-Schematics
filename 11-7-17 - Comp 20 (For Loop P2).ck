// Jeong Woo Seo 
// 11/7/17
// Comp 20 (For Loop P2)

// sound chain 
SinOsc s => dac;

// for loop
for (20 => int i; i < 400; i++)
{
    <<< i >>>; // print loop counter variable 
    i => s.freq; // set freq to i
    10 :: ms => now; // advance time
}