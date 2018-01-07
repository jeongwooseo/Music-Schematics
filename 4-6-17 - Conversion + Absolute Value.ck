//Jeong Woo Seo (Fuzzy)
//Conversions + Absolute value example 
//4/6/17

// negative int
-1 => int negative_int;
// negative float 
-100.50 => float negative_float;

// std commands for negetive values 
Std.abs(negative_int) => int abs_int;
Std.fabs(negative_float) => float abs_float;

// chuck volume
abs_int => float volume;
//chuck frequency
Std.ftoi(abs_float) => int freq;

<<< volume, freq >>>;