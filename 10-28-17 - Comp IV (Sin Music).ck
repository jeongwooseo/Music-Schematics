// Jeong Woo Seo 
// Comp IV (Sin Music)
// 10/28/17

// create UGen
SinOsc s => dac;


// play one note
220 => s.freq;
1.0 => s.gain;
0.3::second => now; 

// silence break
0.0 => s.gain;
0.3::second => now;

// play another note same frrequency 
1.0 => s.gain;
0.3::second => now; 

// silence break 
0.0 => s.gain;
0.3::second => now;

// play two more note, higher, lower gain
330 => s.freq;
0.1 => s.gain;
0.3::second => now;

// silence break 
0.0 => s.gain;
0.3::second => now;

// play note 
0.1 => s.gain;
0.3::second => now;

// silence break
0.0 => s.gain;
0.3::second => now; 
