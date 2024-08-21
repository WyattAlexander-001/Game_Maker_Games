/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 476B2693
/// @DnDComment : Set a variable that will tell this object whether or not$(13_10)to allow the player to take their next turn at the end of $(13_10)this event (for example, if no blocks fell this turn).
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "reset_turn"
reset_turn = 1;

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 52D4C09E
/// @DnDComment : Run the following code for every instance of obj_matching_piece
/// @DnDApplyTo : {obj_matching_piece}
with(obj_matching_piece) {
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5D61CF92
	/// @DnDComment : If the piece fell this turn...
	/// @DnDParent : 52D4C09E
	/// @DnDArgument : "var" "fell_this_turn"
	/// @DnDArgument : "value" "1"
	if(fell_this_turn == 1)
	{
		/// @DnDAction : YoYo Games.Instances.Call_User_Event
		/// @DnDVersion : 1
		/// @DnDHash : 620ED9B0
		/// @DnDComment : Call user event 0, which checks for$(13_10)matches.
		/// @DnDParent : 5D61CF92
		event_user(0);
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2D7E9F4A
/// @DnDComment : If reset_turn is still set to 1 because no objects fell this turn$(13_10)or no matches were found for objects that fell.
/// @DnDArgument : "var" "reset_turn"
/// @DnDArgument : "value" "1"
if(reset_turn == 1)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7EEEE025
	/// @DnDComment : Check if, after the last turn, the player has$(13_10)exhausted all of their available moves.
	/// @DnDParent : 2D7E9F4A
	/// @DnDArgument : "var" "global.moves_available"
	/// @DnDArgument : "op" "3"
	if(global.moves_available <= 0)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 168A7E62
		/// @DnDComment : Create the object which shows a window$(13_10)telling the user they have failed the$(13_10)level.
		/// @DnDParent : 7EEEE025
		/// @DnDArgument : "xpos" "room_width / 2"
		/// @DnDArgument : "ypos" "room_height / 2 - 200"
		/// @DnDArgument : "objectid" "obj_game_over_lose"
		/// @DnDArgument : "layer" ""UIElements1""
		/// @DnDSaveInfo : "objectid" "obj_game_over_lose"
		instance_create_layer(room_width / 2, room_height / 2 - 200, "UIElements1", obj_game_over_lose);
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 46A11000
	/// @DnDComment : The player has not yet exhausted all of their moves...
	/// @DnDParent : 2D7E9F4A
	else
	{
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 6C6B4711
		/// @DnDComment : Run a script which checks if it is possible for the$(13_10)player to make a valid move on the next turn.
		/// @DnDParent : 46A11000
		/// @DnDArgument : "function" "check_board_valid"
		check_board_valid();
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1585CD4A
		/// @DnDComment : If global.valid_moves is greater than or equal to 1,$(13_10)there are valid moves left on the board.
		/// @DnDParent : 46A11000
		/// @DnDArgument : "var" "global.valid_moves"
		/// @DnDArgument : "op" "4"
		/// @DnDArgument : "value" "1"
		if(global.valid_moves >= 1)
		{
			/// @DnDAction : YoYo Games.Common.Set_Global
			/// @DnDVersion : 1
			/// @DnDHash : 50CED1F5
			/// @DnDComment : All animations and calculations have finished for the $(13_10)previous move, we set global.can_swap to 1 so the player$(13_10)will be able to take their next turn.
			/// @DnDParent : 1585CD4A
			/// @DnDArgument : "value" "1"
			/// @DnDArgument : "var" "can_swap"
			global.can_swap = 1;
		
			/// @DnDAction : YoYo Games.Common.Set_Global
			/// @DnDVersion : 1
			/// @DnDHash : 7B5DA4CC
			/// @DnDComment : Reset the global.matched_this_turn variable to 0 since$(13_10)the turn is over and we'll need to set this value again$(13_10)based on the player's next move.
			/// @DnDParent : 1585CD4A
			/// @DnDArgument : "var" "matched_this_turn"
			global.matched_this_turn = 0;
		
			/// @DnDAction : YoYo Games.Common.Apply_To
			/// @DnDVersion : 1
			/// @DnDHash : 26B8A5FB
			/// @DnDComment : The following code applies to all instances of$(13_10)obj_matching_piece
			/// @DnDApplyTo : {obj_matching_piece}
			/// @DnDParent : 1585CD4A
			with(obj_matching_piece) {
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 70797B37
				/// @DnDComment : Reset the fell_this_turn variable$(13_10)to 0, since we have finished checking$(13_10)for matches
				/// @DnDParent : 26B8A5FB
				/// @DnDArgument : "var" "fell_this_turn"
				fell_this_turn = 0;
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 20A33EE8
				/// @DnDComment : Reset the swap_parent variable to noone,$(13_10)since we need to reset pieces that were$(13_10)swapped this turn but remain on the board.
				/// @DnDParent : 26B8A5FB
				/// @DnDArgument : "expr" "noone"
				/// @DnDArgument : "var" "swap_parent"
				swap_parent = noone;
			}
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 31FFA282
		/// @DnDComment : There were no valid moves detected on the board.
		/// @DnDParent : 46A11000
		else
		{
			/// @DnDAction : YoYo Games.Sequences.Sequence_Create
			/// @DnDVersion : 1
			/// @DnDHash : 114F5116
			/// @DnDParent : 31FFA282
			/// @DnDArgument : "xpos" "room_width / 2"
			/// @DnDArgument : "ypos" "room_height / 2 - 200"
			/// @DnDArgument : "var" ""
			/// @DnDArgument : "sequenceid" "seq_no_valid_matches"
			/// @DnDArgument : "layer" ""UIElements1""
			/// @DnDSaveInfo : "sequenceid" "seq_no_valid_matches"
			layer_sequence_create("UIElements1", room_width / 2, room_height / 2 - 200, seq_no_valid_matches);
		}
	}
}