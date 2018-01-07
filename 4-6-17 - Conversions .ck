//Jeong Woo Seo (Fuzzy)
//Conversions 
//4/7/17

//Set volume as int 
1 => int volume;
//Midi note as float
45.6 => float MIDI_note;

//Convert using Std.ftoi()
volume => float f_volume;
Std.ftoi(MIDI_note) => int i_MIDI_note;

<<< f_volume,i_MIDI_note >>>;