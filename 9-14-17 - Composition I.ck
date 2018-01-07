// Jeong Woo Seo 
// Comp I
// 9/14/17

// number of devices to open
0 => int device;

// instance of midi 
MidiOut mout;

// sorting message
MidiMsg msg;

// if open fails quit
if (!mout.open( device ) )
    me.exit();

// print out device that was opened
<<< "MIDI device:", mout.num(), " -> ", mout.name() >>>;

// set midi value to notes
[ 96, 98, 100, 101, 103, 105, 107 ] @=> int notes[];

// spork
spork ~ random_play(0);
spork ~ random_play(-12);
random_play(-12);

// infinite time-loop
function void random_play (int oct)
{
    while( true )
        playmidi(notes[Math.random2(0, notes.size()-1)] + oct, 85, Math.random2(10, 50)::ms); // picking random note from an array
}

function void playmidi(int note, int vel, dur d)
{
    0x90 => msg.data1; // type of MIDI message (this is a NoteOn)
    note => msg.data2; // midi note value
    vel => msg.data3; // midi velocity
    
    mout.send(msg); // send midi note
    
    d => now;
    
    0x80 => msg.data1; // NoteOff message
    note => msg.data2; // midi note value
    0 => msg.data3; // velocity 
    mout.send(msg); // send midi note
    
    d => now;
}