// Jeong Woo Seo
// 12/15/17
// Comp 44 (Playing Sounds Files Method 2)

// create sample chain
SndBuf snare[3];

// pan
snare[0] => dac.left;
snare[1] => dac;
snare[2] => dac.right;

// pre-load all sound files at the beginning 
me.dir()+"CS_Audio/audio/snare_01.wav" => snare[0].read;
me.dir()+"CS_Audio/audio/snare_02.wav" => snare[1].read;
me.dir()+"CS_Audio/audio/snare_03.wav" => snare[2].read;

// infinite loop
while (true)
{
    // pick a random number between 0 and #files
    Math.random2(0,snare.cap()-1) => int which;
    
    // play that sample
    0 => snare[which].pos;
    
    // let it play
    0.5::second => now; 
}