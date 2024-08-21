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

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 02D2D53F
	/// @DnDComment : If the global variable global.audio_volume is 0$(13_10)$(13_10)i.e. If the audio is currently muted
	/// @DnDParent : 3F408814
	/// @DnDArgument : "var" "global.audio_volume"
	if(global.audio_volume == 0)
	{
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 636CA8C2
		/// @DnDComment : Set global.audio_volume to 1 to unmute$(13_10)the audio.
		/// @DnDParent : 02D2D53F
		/// @DnDArgument : "value" "1"
		/// @DnDArgument : "var" "audio_volume"
		global.audio_volume = 1;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 0477040A
	/// @DnDComment : Else means the audio is not currently muted.
	/// @DnDParent : 3F408814
	else
	{
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 2CAEC284
		/// @DnDComment : Set global.audio_volume to 0 to mute$(13_10)the audio.
		/// @DnDParent : 0477040A
		/// @DnDArgument : "var" "audio_volume"
		global.audio_volume = 0;
	}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 4CE4A1E6
	/// @DnDParent : 3F408814
	/// @DnDArgument : "expr" "global.audio_volume > 0"
	if(global.audio_volume > 0)
	{
		/// @DnDAction : YoYo Games.Audio.Audo_Set_Master_Volume
		/// @DnDVersion : 1
		/// @DnDHash : 73C7CB4F
		/// @DnDComment : Set the master volume to global.audio_volume so$(13_10)that pressing this button actually changes the$(13_10)audio volume.
		/// @DnDParent : 4CE4A1E6
		/// @DnDArgument : "volume" "global.audio_volume"
		audio_set_master_gain(0, global.audio_volume);
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1.1
		/// @DnDHash : 6CFAB128
		/// @DnDComment : Play a sound effect for when the button$(13_10)is clicked.
		/// @DnDParent : 4CE4A1E6
		/// @DnDArgument : "soundid" "snd_ui_click"
		/// @DnDSaveInfo : "soundid" "snd_ui_click"
		audio_play_sound(snd_ui_click, 0, 0, 1.0, undefined, 1.0);
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 678E3294
	/// @DnDParent : 3F408814
	else
	{
		/// @DnDAction : YoYo Games.Common.Function
		/// @DnDVersion : 1
		/// @DnDHash : 3ECEAE25
		/// @DnDParent : 678E3294
		/// @DnDArgument : "funcName" "_set_gain"
		/// @DnDArgument : "temp" "1"
		var _set_gain = function() 
		{
			/// @DnDAction : YoYo Games.Audio.Audo_Set_Master_Volume
			/// @DnDVersion : 1
			/// @DnDHash : 596F7778
			/// @DnDComment : Set the master volume to global.audio_volume so$(13_10)that pressing this button actually changes the$(13_10)audio volume.
			/// @DnDParent : 3ECEAE25
			/// @DnDArgument : "volume" "global.audio_volume"
			audio_set_master_gain(0, global.audio_volume);
		
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 6581982B
			/// @DnDComment : Play a sound effect for when the button$(13_10)is clicked.
			/// @DnDParent : 3ECEAE25
			/// @DnDArgument : "soundid" "snd_ui_click"
			/// @DnDSaveInfo : "soundid" "snd_ui_click"
			audio_play_sound(snd_ui_click, 0, 0, 1.0, undefined, 1.0);
		}
	
		/// @DnDAction : YoYo Games.Time.Time_Source_Create
		/// @DnDVersion : 1
		/// @DnDHash : 46E48AEB
		/// @DnDParent : 678E3294
		/// @DnDArgument : "idx" "_ts_set_gain"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "parent" "time_source_game"
		/// @DnDArgument : "period" "20"
		/// @DnDArgument : "units" "time_source_units_frames"
		/// @DnDArgument : "callback" "_set_gain"
		var _ts_set_gain = time_source_create(time_source_game, 20, time_source_units_frames, _set_gain, [], 1, time_source_expire_after);
	
		/// @DnDAction : YoYo Games.Time.Time_Source_Start
		/// @DnDVersion : 1
		/// @DnDHash : 6DCBDAE3
		/// @DnDParent : 678E3294
		/// @DnDArgument : "idx" "_ts_set_gain"
		time_source_start(_ts_set_gain);
	}

	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 25904B62
	/// @DnDComment : Changes the sprite for the button to unpressed again
	/// @DnDParent : 3F408814
	/// @DnDArgument : "spriteind" "sprite_index"
	sprite_index = sprite_index;
	image_index = 0;
}