/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 2173175B
/// @DnDComment : Start playing the music for the main menu.
/// @DnDArgument : "soundid" "snd_music_menu"
/// @DnDArgument : "loop" "1"
/// @DnDSaveInfo : "soundid" "snd_music_menu"
audio_play_sound(snd_music_menu, 0, 1, 1.0, undefined, 1.0);

/// @DnDAction : YoYo Games.Random.Randomize
/// @DnDVersion : 1
/// @DnDHash : 0F25E593
/// @DnDComment : The randomize action means that all random actions in the$(13_10)game - such as generating colored matching pieces - will $(13_10)always feel truly random.
randomize();

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 1001AB14
/// @DnDComment : Set the audio volume to the last master gain to begin with. The user$(13_10)can toggle this on the menu to mute sounds.
/// @DnDArgument : "value" "audio_get_master_gain(0)"
/// @DnDArgument : "var" "audio_volume"
global.audio_volume = audio_get_master_gain(0);