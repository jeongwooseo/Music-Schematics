// Jeong Woo Seo
// 12/14/17
// Comp 43 (Sound File+Arrays)

// set sample chain
SndBuf snare => dac;

// make and fill an array of sound file paths+names
string snare_samples[3];
me.dir()+"CS_Audio/audio/snare_01.wav" => snare_samples[0];
me.dir()+"CS_Audio/audio/snare_02.wav" => snare_samples[1];
me.dir()+"CS_Audio/audio/snare_03.wav" => snare_samples[2];

// infinite loop
while (true)
{
    // pick random number between 0 and #files
    Math.random2(0,snare_samples.cap()-1) => int which;
    
    // load up that file
    snare_samples[which] => snare.read;
    
    // advance time
    0.5::second => now;
}