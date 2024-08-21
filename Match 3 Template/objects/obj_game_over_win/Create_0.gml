/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 68B39830
/// @DnDComment : Apply the following code to all instances of obj_matching_piece...
/// @DnDApplyTo : {obj_matching_piece}
with(obj_matching_piece) {
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 19241D32
	/// @DnDComment : Create obj_effect_game_won at this object's position.$(13_10)$(13_10)This will create the effect of pieces falling from$(13_10)the bottom of the board when the game is won.$(13_10)$(13_10)We assign the id of this new object to the $(13_10)variable _effect_piece so we can target it in the$(13_10)next action.
	/// @DnDParent : 68B39830
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "var" "_effect_piece"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "objectid" "obj_effect_game_won"
	/// @DnDArgument : "layer" ""Pieces""
	/// @DnDSaveInfo : "objectid" "obj_effect_game_won"
	var _effect_piece = instance_create_layer(x + 0, y + 0, "Pieces", obj_effect_game_won);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0EFFEA14
	/// @DnDComment : Change the image_index of the effect piece to $(13_10)match the image_index of the current piece
	/// @DnDParent : 68B39830
	/// @DnDArgument : "expr" "image_index"
	/// @DnDArgument : "var" "_effect_piece.image_index"
	_effect_piece.image_index = image_index;

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 72AF1BB8
	/// @DnDComment : Destroy the instance of obj_matching_piece
	/// @DnDParent : 68B39830
	instance_destroy();
}

/// @DnDAction : YoYo Games.Audio.Stop_Audio
/// @DnDVersion : 1
/// @DnDHash : 626A9665
/// @DnDComment : Stop the game music from playing.
/// @DnDArgument : "soundid" "snd_music_game"
/// @DnDSaveInfo : "soundid" "snd_music_game"
audio_stop_sound(snd_music_game);

/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
/// @DnDVersion : 1
/// @DnDHash : 312E9DFE
/// @DnDArgument : "soundid" "snd_game_win"
/// @DnDSaveInfo : "soundid" "snd_game_win"
var l312E9DFE_0 = snd_game_win;
if (audio_is_playing(l312E9DFE_0))
{
	/// @DnDAction : YoYo Games.Audio.Stop_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 74FC7EF9
	/// @DnDParent : 312E9DFE
	/// @DnDArgument : "soundid" "snd_game_win"
	/// @DnDSaveInfo : "soundid" "snd_game_win"
	audio_stop_sound(snd_game_win);
}

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 4AC50354
/// @DnDComment : Play a music effect for winning the game.
/// @DnDArgument : "soundid" "snd_game_win"
/// @DnDSaveInfo : "soundid" "snd_game_win"
audio_play_sound(snd_game_win, 0, 0, 1.0, undefined, 1.0);