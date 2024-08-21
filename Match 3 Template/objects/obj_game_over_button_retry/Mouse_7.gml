/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3F408814
/// @DnDComment : If the image_index is equal to 1, which means that$(13_10)the left mouse button was clicked on this button$(13_10)already...
/// @DnDArgument : "var" "image_index"
/// @DnDArgument : "value" "1"
if(image_index == 1)
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 5D2A5FC9
	/// @DnDComment : Play a sound effect for when the button$(13_10)is clicked.
	/// @DnDParent : 3F408814
	/// @DnDArgument : "soundid" "snd_ui_click"
	/// @DnDSaveInfo : "soundid" "snd_ui_click"
	audio_play_sound(snd_ui_click, 0, 0, 1.0, undefined, 1.0);

	/// @DnDAction : YoYo Games.Rooms.Restart_Room
	/// @DnDVersion : 1
	/// @DnDHash : 3E48A87B
	/// @DnDComment : The player clicked "Retry" so we restart$(13_10)the current room.
	/// @DnDParent : 3F408814
	room_restart();
}