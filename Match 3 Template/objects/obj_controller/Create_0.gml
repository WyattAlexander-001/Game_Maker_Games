/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 7BADE79E
/// @DnDComment : Set a global variable which can be checked by$(13_10)all objects. This will tell objects whether$(13_10)or not the player is currently allowed to $(13_10)swap matching pieces, or whether we are$(13_10)waiting for the game to finish calculating $(13_10)the result of the player's previous turn.
/// @DnDArgument : "value" "1"
/// @DnDArgument : "var" "can_swap"
global.can_swap = 1;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7980B929
/// @DnDArgument : "var" "drag_start_x"
drag_start_x = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 50C443D7
/// @DnDArgument : "var" "drag_start_y"
drag_start_y = 0;

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 60F0AB83
/// @DnDComment : Set how many moves the player is allowed to use$(13_10)before they will fail this level.$(13_10)$(13_10)For this example we're using 20 moves.
/// @DnDArgument : "value" "25"
/// @DnDArgument : "var" "moves_available"
global.moves_available = 25;

/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 11C280DE
/// @DnDArgument : "expr" "room"
var l11C280DE_0 = room;
switch(l11C280DE_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 00609BDC
	/// @DnDParent : 11C280DE
	/// @DnDArgument : "const" "rm_level_1"
	case rm_level_1:
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 5DFD21A2
		/// @DnDComment : Set the target for the score the player must reach$(13_10)to win the level.$(13_10)$(13_10)For this example we're using 20,000.
		/// @DnDParent : 00609BDC
		/// @DnDArgument : "value" "10000"
		/// @DnDArgument : "var" "score_target"
		global.score_target = 10000;
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 3C8C92C7
	/// @DnDParent : 11C280DE
	/// @DnDArgument : "const" "rm_level_2"
	case rm_level_2:
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 7F25EB6F
		/// @DnDComment : Set the target for the score the player must reach$(13_10)to win the level.$(13_10)$(13_10)For this example we're using 20,000.
		/// @DnDParent : 3C8C92C7
		/// @DnDArgument : "value" "15000"
		/// @DnDArgument : "var" "score_target"
		global.score_target = 15000;
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 2A47026A
	/// @DnDParent : 11C280DE
	/// @DnDArgument : "const" "rm_level_3"
	case rm_level_3:
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 0517EA92
		/// @DnDComment : Set the target for the score the player must reach$(13_10)to win the level.$(13_10)$(13_10)For this example we're using 20,000.
		/// @DnDParent : 2A47026A
		/// @DnDArgument : "value" "20000"
		/// @DnDArgument : "var" "score_target"
		global.score_target = 20000;
		break;
}

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 1E49EB3B
/// @DnDComment : Set the current score for the round to 0 in a global$(13_10)variable called score_total.
/// @DnDArgument : "var" "score_total"
global.score_total = 0;

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 79654D57
/// @DnDComment : Set the current score combo to 0, this will increase$(13_10)every time a match is made in succession increasing$(13_10)the points the player can win from each match.
/// @DnDArgument : "var" "score_combo"
global.score_combo = 0;

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 3A591208
/// @DnDComment : Set a variable to tell all objects if a match$(13_10)was made on the player's turn
/// @DnDArgument : "var" "matched_this_turn"
global.matched_this_turn = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1D3FA0F1
/// @DnDComment : Set a variable to keep track of the width of the score$(13_10)bar since we want it to increase in size with a nice $(13_10)gradual animation (see the draw event of this object).
/// @DnDArgument : "var" "score_bar_width"
score_bar_width = 0;

/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
/// @DnDVersion : 1
/// @DnDHash : 2EB6FDAB
/// @DnDComment : If the menu music is still playing when the level starts...
/// @DnDArgument : "soundid" "snd_music_menu"
/// @DnDSaveInfo : "soundid" "snd_music_menu"
var l2EB6FDAB_0 = snd_music_menu;
if (audio_is_playing(l2EB6FDAB_0))
{
	/// @DnDAction : YoYo Games.Audio.Stop_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 489D6A94
	/// @DnDComment : Stop the menu music from playing.
	/// @DnDParent : 2EB6FDAB
	/// @DnDArgument : "soundid" "snd_music_menu"
	/// @DnDSaveInfo : "soundid" "snd_music_menu"
	audio_stop_sound(snd_music_menu);
}

/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
/// @DnDVersion : 1
/// @DnDHash : 5A281759
/// @DnDComment : // If the game win music is still playing when the level starts...
/// @DnDArgument : "soundid" "snd_game_win"
/// @DnDSaveInfo : "soundid" "snd_game_win"
var l5A281759_0 = snd_game_win;
if (audio_is_playing(l5A281759_0))
{
	/// @DnDAction : YoYo Games.Audio.Stop_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 638FF54A
	/// @DnDComment : Stop the menu music from playing.
	/// @DnDParent : 5A281759
	/// @DnDArgument : "soundid" "snd_game_win"
	/// @DnDSaveInfo : "soundid" "snd_game_win"
	audio_stop_sound(snd_game_win);
}

/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
/// @DnDVersion : 1
/// @DnDHash : 3B60322C
/// @DnDComment : // If the game lose music is still playing when the level starts...
/// @DnDArgument : "soundid" "snd_game_lose"
/// @DnDSaveInfo : "soundid" "snd_game_lose"
var l3B60322C_0 = snd_game_lose;
if (audio_is_playing(l3B60322C_0))
{
	/// @DnDAction : YoYo Games.Audio.Stop_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 21E5AB09
	/// @DnDComment : Stop the menu music from playing.
	/// @DnDParent : 3B60322C
	/// @DnDArgument : "soundid" "snd_game_lose"
	/// @DnDSaveInfo : "soundid" "snd_game_lose"
	audio_stop_sound(snd_game_lose);
}

/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
/// @DnDVersion : 1
/// @DnDHash : 7AD03B4A
/// @DnDComment : If the game background music is not playing...
/// @DnDArgument : "soundid" "snd_music_game"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "soundid" "snd_music_game"
var l7AD03B4A_0 = snd_music_game;
if (!audio_is_playing(l7AD03B4A_0))
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 1ED947CC
	/// @DnDComment : Play the background music for the game.
	/// @DnDParent : 7AD03B4A
	/// @DnDArgument : "soundid" "snd_music_game"
	/// @DnDArgument : "loop" "1"
	/// @DnDSaveInfo : "soundid" "snd_music_game"
	audio_play_sound(snd_music_game, 0, 1, 1.0, undefined, 1.0);
}