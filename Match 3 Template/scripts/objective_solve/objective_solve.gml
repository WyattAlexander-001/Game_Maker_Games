/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 450320A6
/// @DnDArgument : "funcName" "objective_solve"
/// @DnDArgument : "arg" "_type"
function objective_solve(_type) 
{
	/// @DnDAction : YoYo Games.Common.Apply_To
	/// @DnDVersion : 1
	/// @DnDHash : 585ED697
	/// @DnDApplyTo : {obj_objectives}
	/// @DnDParent : 450320A6
	with(obj_objectives) {
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 21D9C673
		/// @DnDParent : 585ED697
		/// @DnDArgument : "expr" "type_0 == _type"
		if(type_0 == _type)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7974C48D
			/// @DnDParent : 21D9C673
			/// @DnDArgument : "expr" "-1"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "amount_0"
			amount_0 += -1;
		}
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 4AA9F72B
		/// @DnDParent : 585ED697
		/// @DnDArgument : "expr" "type_1 == _type"
		if(type_1 == _type)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7161E242
			/// @DnDParent : 4AA9F72B
			/// @DnDArgument : "expr" "-1"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "amount_1"
			amount_1 += -1;
		}
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 139D2D32
		/// @DnDParent : 585ED697
		/// @DnDArgument : "expr" "type_2 == _type"
		if(type_2 == _type)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7AFCCC16
			/// @DnDParent : 139D2D32
			/// @DnDArgument : "expr" "-1"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "amount_2"
			amount_2 += -1;
		}
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 75B8F36D
		/// @DnDInput : 3
		/// @DnDParent : 585ED697
		/// @DnDArgument : "expr" "amount_0 <= 0"
		/// @DnDArgument : "expr_1" "amount_1 <= 0"
		/// @DnDArgument : "expr_2" "amount_2 <= 0"
		if(amount_0 <= 0 && amount_1 <= 0 && amount_2 <= 0)
		{
			/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
			/// @DnDVersion : 1
			/// @DnDHash : 52D2AE62
			/// @DnDParent : 75B8F36D
			/// @DnDArgument : "obj" "obj_game_over_win"
			/// @DnDArgument : "not" "1"
			/// @DnDSaveInfo : "obj" "obj_game_over_win"
			var l52D2AE62_0 = false;
			l52D2AE62_0 = instance_exists(obj_game_over_win);
			if(!l52D2AE62_0)
			{
				/// @DnDAction : YoYo Games.Rooms.If_Last_Room
				/// @DnDVersion : 1
				/// @DnDHash : 77C2B5FD
				/// @DnDParent : 52D2AE62
				/// @DnDArgument : "not" "1"
				if(room != room_last)
				{
					/// @DnDAction : YoYo Games.Sequences.Sequence_Create
					/// @DnDVersion : 1
					/// @DnDHash : 4BDD14A2
					/// @DnDParent : 77C2B5FD
					/// @DnDArgument : "xpos" "room_width / 2"
					/// @DnDArgument : "ypos" "(room_height / 2) - 200"
					/// @DnDArgument : "var" ""
					/// @DnDArgument : "sequenceid" "seq_game_over_win_level"
					/// @DnDArgument : "layer" ""UIElements1""
					/// @DnDSaveInfo : "sequenceid" "seq_game_over_win_level"
					layer_sequence_create("UIElements1", room_width / 2, (room_height / 2) - 200, seq_game_over_win_level);
				}
			
				/// @DnDAction : YoYo Games.Common.Else
				/// @DnDVersion : 1
				/// @DnDHash : 1E15E7D2
				/// @DnDParent : 52D2AE62
				else
				{
					/// @DnDAction : YoYo Games.Sequences.Sequence_Create
					/// @DnDVersion : 1
					/// @DnDHash : 7CC4A968
					/// @DnDParent : 1E15E7D2
					/// @DnDArgument : "xpos" "room_width / 2"
					/// @DnDArgument : "ypos" "(room_height / 2) - 200"
					/// @DnDArgument : "var" ""
					/// @DnDArgument : "sequenceid" "seq_game_over_win_template"
					/// @DnDArgument : "layer" ""UIElements1""
					/// @DnDSaveInfo : "sequenceid" "seq_game_over_win_template"
					layer_sequence_create("UIElements1", room_width / 2, (room_height / 2) - 200, seq_game_over_win_template);
				}
			}
		}
	}
}