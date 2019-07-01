package love.audio;
@:enum
abstract FilterType (String)
{
	var Lowpass = "lowpass";
	var Highpass = "highpass";
	var Bandpass = "bandpass";
}