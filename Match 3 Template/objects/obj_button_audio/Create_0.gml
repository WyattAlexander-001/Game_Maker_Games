/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
/// @DnDVersion : 1
/// @DnDHash : 621B59A9
/// @DnDComment : Set the animation speed to 0 because the$(13_10)sprite has two frames for "pressed" and "not pressed"$(13_10)which we will manipulate when the player clicks.
/// @DnDArgument : "speed" "0"
image_speed = 0;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 774B67AF
/// @DnDComment : Sets audio volume to either 0 or 1 so it can be used for the sprite image
/// @DnDArgument : "var" "global.audio_volume"
/// @DnDArgument : "op" "2"
if(global.audio_volume > 0)
{
	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 60A8B8B4
	/// @DnDParent : 774B67AF
	/// @DnDArgument : "value" "1"
	/// @DnDArgument : "var" "global.audio_volume"
	global.audio_volume = 1;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 0FA2D6C6
else
{
	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 05DCC3DC
	/// @DnDParent : 0FA2D6C6
	/// @DnDArgument : "var" "global.audio_volume"
	global.audio_volume = 0;
}