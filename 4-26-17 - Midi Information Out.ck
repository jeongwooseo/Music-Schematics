//Jeong Woo Seo 
//4/26/17
//Midi Information Out

// ?
MidiOut mout;
mout.open(0);

// Set Variable 
int note;

while(true)
{
    MidiMsg msg; // Create Message
    0x90 => msg.data1; // Note On 
    Math.random2(48,102) => note => msg.data2; // Note Value
    127 => msg.data3; // Velocity (Maximum Loudness)
    mout.send(msg); // ?
    10::ms => now;
    // What is the role of this second half?
    0x80 => msg.data1; // Note Off
    note => msg.data2; // ?
    0 => msg.data3;
    mout.send(msg);
    10::ms => now;
}