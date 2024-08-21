/// @DnDAction : YoYo Games.Audio.Stop_Audio
/// @DnDVersion : 1
/// @DnDHash : 576851C6
/// @DnDComment : Stop the game music from playing.
/// @DnDArgument : "soundid" "snd_music_game"
/// @DnDSaveInfo : "soundid" "snd_music_game"
audio_stop_sound(snd_music_game);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 77C2BC8A
/// @DnDComment : Play a music effect for losing the game.
/// @DnDArgument : "soundid" "snd_game_lose"
/// @DnDSaveInfo : "soundid" "snd_game_lose"
audio_play_sound(snd_game_lose, 0, 0, 1.0, undefined, 1.0);