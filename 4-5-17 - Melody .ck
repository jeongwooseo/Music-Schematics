//Jeong Woo Seo (Fuzzy)
//4/5/17
//Sound Chain
TriOsc s => dac;
for ( 0 => int i; i<= 127; i++ )
{
    Std.mtof(i) => float Hz; //Midi to Hz
    <<< i, Hz >>>; //print i and Hz
    Hz => s.freq; //update frequency 
    200::ms => now; //advance time
}