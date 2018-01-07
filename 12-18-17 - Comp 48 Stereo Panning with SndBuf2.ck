// Jeong Woo Seo 
// 12/17/17
// Stereo Panning With SndBuf2

// delcare and load up a stereo file (array)
SndBuf2 myStereoSound;
me.dir()+"CS_Audio/audio/snare_01.wav" => myStereoSound.read;

// We'll use these for stereo panning
Gain bal[2];

// connect everything up in stereo
myStereoSound.chan(0) => bal[0] => dac.left;
myStereoSound.chan(1) => bal[1] => dac.right;
// set out soundfile to repeat forever
1 => myStereoSound.loop; // sets playhead back to 0 inorder to repeat forever

while (true)     {
    // pick a random playback rate and a random panning
    Math.random2f(0.2,1.8) => myStereoSound.rate;
    Math.random2f(-1.0,1.0) => float balance;
    
    // turn balance into left/right gain between 0 and 1.0
    (balance+1)/2.0 => float rightGain;
    1.0 - rightGain => float leftGain;
    leftGain => bal[0].gain;
    rightGain => bal[1].gain;
    
    0.3::second => now;
}