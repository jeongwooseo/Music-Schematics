// Jeong Woo Seo
// 11/16/17
// Comp 30 (Check Point)
// how to unplug t

// sound chain
SinOsc s => Pan2 p => dac;
TriOsc t => Pan2 p2 => dac;

// declare integer w
0 => int w;

// set frequency
220 => int myFreq;

// set gain
Math.random2f(0.3,0.5) => float myGain;

// set on gain and off gain
1 => int OnGain;
0 => int OffGain;

// set duration
Math.random2(700,999) => int Dur;

// set chance variable 
Math.random2(0,1) => int chance;

// set time later value
10 :: second + now => time later;

// turn of SinOsc
OffGain => s.gain;

// if control sturcutre 
if ( (chance == 1) || (chance == 0) )
{
    Math.random2(190,210) => int FreqA; // select frequency value
    <<< FreqA >>>; // print FreqA
    FreqA => t.freq; // input frequency value
    Math.random2f(.01,0.3) => float GainA; // select gain value 
    GainA => t.gain; // input gain value
    2 :: second => now; // advance time 
}

// turn of TriOsc t
OffGain => t.gain;

// for control structure 
for (0 => int i; i <10; i++)
{
    Math.random2(300,410) => int FreqA; // select frequency value 
    <<< FreqA >>>; // print FreqA
    FreqA => s.freq; // input frequency value
    Math.random2f(.01,0.3) => float GainA; // select gain value
    GainA => s.gain; // input gain value 
    200 ::  ms => now; // advance time
    // oscillate pan between 1.0 and -1.0
    Math.sin(now/second) => p.pan; //? whats going on
    // do it pretty often to make it smooth
    80::ms => now; // whats going on
}

// turn off SinOsc s
OffGain => s.gain;

// turn on TriOsc t
OffGain => s.gain;

// while control structure 
while ( now < later)
{
    Math.random2(190,210) => int FreqA; // select frequency value 
    <<< FreqA >>>; // print FreqA
    FreqA => t.freq; // input frequency value
    Math.random2f(.01,0.3) => float GainA; // select gain value
    GainA => t.gain; // input gain value 
    200 ::  ms => now; // advance time
}
