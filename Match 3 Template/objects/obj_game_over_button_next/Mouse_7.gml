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
	/// @DnDHash : 07A9992B
	/// @DnDComment : Play a sound effect for when the button$(13_10)is clicked.
	/// @DnDParent : 3F408814
	/// @DnDArgument : "soundid" "snd_ui_click"
	/// @DnDSaveInfo : "soundid" "snd_ui_click"
	audio_play_sound(snd_ui_click, 0, 0, 1.0, undefined, 1.0);

	/// @DnDAction : YoYo Games.Rooms.If_Last_Room
	/// @DnDVersion : 1
	/// @DnDHash : 2367B4C1
	/// @DnDComment : If this is not the last room (level)...
	/// @DnDParent : 3F408814
	/// @DnDArgument : "not" "1"
	if(room != room_last)
	{
		/// @DnDAction : YoYo Games.Rooms.Next_Room
		/// @DnDVersion : 1
		/// @DnDHash : 493C6BBD
		/// @DnDComment : Go to the next room (level).
		/// @DnDParent : 2367B4C1
		room_goto_next();
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 41F92EF0
	/// @DnDComment : This was indeed the last room...
	/// @DnDParent : 3F408814
	else
	{
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 0E5F71CA
		/// @DnDComment : So go back to the main menu.
		/// @DnDParent : 41F92EF0
		/// @DnDArgument : "room" "rm_menu"
		/// @DnDSaveInfo : "room" "rm_menu"
		room_goto(rm_menu);
	}
}