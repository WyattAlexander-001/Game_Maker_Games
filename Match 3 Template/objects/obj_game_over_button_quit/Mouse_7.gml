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
	/// @DnDHash : 24AA937D
	/// @DnDComment : Play a sound effect for when the button$(13_10)is clicked.
	/// @DnDParent : 3F408814
	/// @DnDArgument : "soundid" "snd_ui_close"
	/// @DnDSaveInfo : "soundid" "snd_ui_close"
	audio_play_sound(snd_ui_close, 0, 0, 1.0, undefined, 1.0);

	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 50807861
	/// @DnDComment : The player pressed "Quit" so we go back$(13_10)to the main menu.
	/// @DnDParent : 3F408814
	/// @DnDArgument : "room" "rm_menu"
	/// @DnDSaveInfo : "room" "rm_menu"
	room_goto(rm_menu);
}