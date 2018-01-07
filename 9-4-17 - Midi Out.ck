// number of the device to open (see: chuck --probe)
0 => int device;

// the midi event
MidiOut mout;
// the message for retrieving data
MidiMsg msg;

// open the device
if ( !mout.open( device ) )
    me.exit();

// print out device that was opened
<<< "MIDI device:", mout.num(), " -> ", mout.name() >>>;

int note;
[ 60, 62, 64, 65, 67, 69, 71 ] @=> int notes[];

spork ~ random_play(0);
spork ~ random_play(12);
random_play(-12);


// infinite time-loop
function void random_play(int oct)
{
    while( true )
        playmidi(notes[Math.random2(0, notes.size()-1)] + oct, 85, Math.random2(100, 500)::ms); // picking random note from an array;
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
    mout.send(msg);
    
    d => now;
}
