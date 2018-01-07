// Jeong Woo Seo 
// 11/7/17
// Comp 18 (While Loop)

// sound chain 
SinOsc s => dac;

// initialize variable i
20 => int i;

// for loop
while (i < 400)
{
    <<< i >>>; // print loop counter variable 
    i => s.freq; // set freq to i
    10 :: ms => now; // advance time
    i++; // update counter variable (very important!!)
}