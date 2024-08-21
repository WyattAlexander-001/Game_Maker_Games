/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5009B6A9
/// @DnDComment : This alarm is triggered in User Event 0 of obj_matching_piece. If the move the player$(13_10)just made was invalid (i.e. it created no matching line) this code will tell the pieces$(13_10)involved to swap back.
/// @DnDArgument : "var" "global.matched_this_turn"
if(global.matched_this_turn == 0)
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 61B9E9CB
	/// @DnDComment : Play a sound effect indicating that the$(13_10)last move was invalid.
	/// @DnDParent : 5009B6A9
	/// @DnDArgument : "soundid" "snd_invalid_match"
	/// @DnDSaveInfo : "soundid" "snd_invalid_match"
	audio_play_sound(snd_invalid_match, 0, 0, 1.0, undefined, 1.0);

	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 06BCF864
	/// @DnDComment : Eliminate the player's multiplier by setting the variable$(13_10)score_combo back to 0, since they made a mistake.
	/// @DnDParent : 5009B6A9
	/// @DnDArgument : "var" "score_combo"
	global.score_combo = 0;

	/// @DnDAction : YoYo Games.Common.Apply_To
	/// @DnDVersion : 1
	/// @DnDHash : 099AA1C9
	/// @DnDComment : Apply the following code to all instances of obj_matching_piece
	/// @DnDApplyTo : {obj_matching_piece}
	/// @DnDParent : 5009B6A9
	with(obj_matching_piece) {
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 714FFC93
		/// @DnDComment : If the swap_parent variable is not equal to noone,$(13_10)i.e. if it has been set to the id of another matching$(13_10)piece...
		/// @DnDParent : 099AA1C9
		/// @DnDArgument : "var" "swap_parent"
		/// @DnDArgument : "not" "1"
		/// @DnDArgument : "value" "noone"
		if(!(swap_parent == noone))
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3B599CA0
			/// @DnDComment : Set the target_x for this piece to the x of the$(13_10)object it needs to swap back with
			/// @DnDParent : 714FFC93
			/// @DnDArgument : "expr" "swap_parent.x"
			/// @DnDArgument : "var" "target_x"
			target_x = swap_parent.x;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2A005EBD
			/// @DnDComment : Set the target_y for this piece to the y of the$(13_10)object it needs to swap back with
			/// @DnDParent : 714FFC93
			/// @DnDArgument : "expr" "swap_parent.y"
			/// @DnDArgument : "var" "target_y"
			target_y = swap_parent.y;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 49E4A8E5
			/// @DnDComment : Reset the variable swap_parent to noone
			/// @DnDParent : 714FFC93
			/// @DnDArgument : "expr" "noone"
			/// @DnDArgument : "var" "swap_parent"
			swap_parent = noone;
		}
	}

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 07C12661
	/// @DnDComment : For this object, obj_controller, set alarm[1] to 15. This will give the objects$(13_10)above time to swap back, so if you change their animation speed in the step$(13_10)event you will need to change this value.$(13_10)$(13_10)Alarm[1] resets the turn so the player can have another try.
	/// @DnDParent : 5009B6A9
	/// @DnDArgument : "steps" "15"
	/// @DnDArgument : "alarm" "1"
	alarm_set(1, 15);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 1887F4F0
else
{
	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 203DA93E
	/// @DnDComment : Because the player performed a valid move, we need$(13_10)to reduce the number of moves available.$(13_10)$(13_10)Here we reduce the global variable moves_available by 1.
	/// @DnDParent : 1887F4F0
	/// @DnDArgument : "value" "-1"
	/// @DnDArgument : "value_relative" "1"
	/// @DnDArgument : "var" "moves_available"
	global.moves_available += -1;
}