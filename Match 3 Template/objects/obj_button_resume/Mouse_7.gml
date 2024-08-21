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

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 2BD2FA84
	/// @DnDParent : 3F408814
	/// @DnDArgument : "soundid" "snd_music_game"
	/// @DnDSaveInfo : "soundid" "snd_music_game"
	audio_play_sound(snd_music_game, 0, 0, 1.0, undefined, 1.0);

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 65699929
	/// @DnDParent : 3F408814
	instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3ECC1E95
	/// @DnDApplyTo : {obj_game_pause}
	/// @DnDParent : 3F408814
	with(obj_game_pause) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 45E37434
	/// @DnDApplyTo : {obj_game_over_button_quit}
	/// @DnDParent : 3F408814
	with(obj_game_over_button_quit) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 74DBA0CC
	/// @DnDApplyTo : {obj_banner_pause}
	/// @DnDParent : 3F408814
	with(obj_banner_pause) instance_destroy();
}