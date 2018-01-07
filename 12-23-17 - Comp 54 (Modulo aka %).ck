// Jeong Woo Seo 
// 12/23/17 
// Comp 53 (Modulo aka %)

// create sample chain
SndBuf2 clickhi => dac;
SndBuf2 clicklo => dac;

// load samples
me.dir()+"CS_Audio/audio/click_02.wav" => clickhi.read;
me.dir()+"CS_Audio/audio/click_01.wav" => clicklo.read;

// define modulo 
4 => int MOD;

// for loop
for (0 => int beat; beat < 24; beat++)
{
    // print out beat and beat modulo MOD
    <<< beat, "Modulo", MOD, "is:", beat % MOD >>>;
    
    // clickhi on every beat
    0 => clickhi.pos;
    
    // but only click low on every "MODth" beat
    if (beat % MOD ==0)
    {
        0 => clicklo.pos;
    }
    0.5::second => now;
}