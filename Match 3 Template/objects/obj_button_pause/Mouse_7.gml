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

	/// @DnDAction : YoYo Games.Sequences.Sequence_Create
	/// @DnDVersion : 1
	/// @DnDHash : 3DDE7BB4
	/// @DnDParent : 3F408814
	/// @DnDArgument : "xpos" "room_width / 2"
	/// @DnDArgument : "ypos" "(room_height / 2) - 200"
	/// @DnDArgument : "var" ""
	/// @DnDArgument : "sequenceid" "seq_pause"
	/// @DnDArgument : "layer" ""UIElements1""
	/// @DnDSaveInfo : "sequenceid" "seq_pause"
	layer_sequence_create("UIElements1", room_width / 2, (room_height / 2) - 200, seq_pause);
}