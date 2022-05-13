// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

/// @desc ScreenShake(magnitude, frames)
/// @arg Magnitude sets the strength of the shake
/// @arg Frames sets the length of the shake in frames
function ScreenShake(Magnitude, Frames){
	
	with (obj_Camera)
	{
		if (argument0 > shakeRemain)
		{
			shakeMagnitude = argument0;
			shakeRemain = argument0;
			shakeLength = argument1;
		}
	}
	
}