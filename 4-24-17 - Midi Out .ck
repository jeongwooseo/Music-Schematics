
MidiOut mout;
mout.open(0);

// New Variable 
int note; 

while(true)
{
    MidiMsg msg;
    0x90 => msg.data1; // Note on
    Math.random2(48,72) => note => msg.data2; // Note Value (Middle C)
    127 => msg.data3; // Velocity (Maxium loudness)
    mout.send(msg);

    250::ms => now;
    
    0x80 => msg.data1; // Note off
    note => msg.data2;
    0 => msg.data3;
    mout.send(msg);
    
    250::ms => now;
}
