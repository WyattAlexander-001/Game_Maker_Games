/// @DnDAction : YoYo Games.Collisions.If_Collision_Point
/// @DnDVersion : 1
/// @DnDHash : 3E36F1CE
/// @DnDComment : If there is not already an instance of obj_matching piece$(13_10)in this square when it is created, we will need to create$(13_10)one.
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "obj" "obj_matching_piece"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "obj" "obj_matching_piece"
var l3E36F1CE_0 = collision_point(x + 0, y + 0, obj_matching_piece, true, 1);
if(!(l3E36F1CE_0))
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3CB51DD0
	/// @DnDComment : When the play field squares are created, they$(13_10)each create a matching piece on their own square$(13_10)to fill the board at the start of the game.$(13_10)$(13_10)We create them on the "Pieces" layer as this is$(13_10)above the play field.
	/// @DnDParent : 3E36F1CE
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_matching_piece"
	/// @DnDArgument : "layer" ""Pieces""
	/// @DnDSaveInfo : "objectid" "obj_matching_piece"
	instance_create_layer(x + 0, y + 0, "Pieces", obj_matching_piece);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0D0EBABF
	/// @DnDComment : If this was the last playfield square to create$(13_10)a piece, we need to run some checks to see if the$(13_10)board has any valid moves available at the start$(13_10)of the game.$(13_10)$(13_10)We check that the number of obj_matching_piece matches$(13_10)the number of obj_playfield_parent to see if this is $(13_10)the last piece.
	/// @DnDParent : 3E36F1CE
	/// @DnDArgument : "var" "instance_number(obj_matching_piece)"
	/// @DnDArgument : "value" "instance_number(obj_playfield_parent)"
	if(instance_number(obj_matching_piece) == instance_number(obj_playfield_parent))
	{
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 774385C3
		/// @DnDComment : Call the function check_board_valid to see$(13_10)if there are any valid moves on the board.
		/// @DnDParent : 0D0EBABF
		/// @DnDArgument : "function" "check_board_valid"
		check_board_valid();
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 369CAD20
		/// @DnDComment : If there were not any valid moves on the board,$(13_10)we will need to force a valid move.
		/// @DnDParent : 0D0EBABF
		/// @DnDArgument : "var" "global.valid_moves"
		/// @DnDArgument : "op" "3"
		if(global.valid_moves <= 0)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5A594402
			/// @DnDComment : Set a variable to track whether or not we have created a match.$(13_10)$(13_10)This will be tested by other instances later in this event.
			/// @DnDParent : 369CAD20
			/// @DnDArgument : "var" "created_match"
			created_match = 0;
		
			/// @DnDAction : YoYo Games.Common.Apply_To
			/// @DnDVersion : 1
			/// @DnDHash : 1B59FDF4
			/// @DnDComment : Apply the following code to all instances of obj_matching_piece
			/// @DnDApplyTo : {obj_matching_piece}
			/// @DnDParent : 369CAD20
			with(obj_matching_piece) {
				/// @DnDAction : YoYo Games.Instances.Destroy_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 744B151A
				/// @DnDComment : Destroy the instance, this will clear$(13_10)the current "faulty" board.
				/// @DnDParent : 1B59FDF4
				instance_destroy();
			}
		
			/// @DnDAction : YoYo Games.Common.Apply_To
			/// @DnDVersion : 1
			/// @DnDHash : 793E2326
			/// @DnDComment : Apply the following code to all instances of obj_playfield_parent
			/// @DnDApplyTo : {obj_playfield_parent}
			/// @DnDParent : 369CAD20
			with(obj_playfield_parent) {
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 6385290B
				/// @DnDComment : If a forced match hasn't already been created$(13_10)by the calling instance (other), continue this$(13_10)block of code.$(13_10)$(13_10)Otherwise do nothing.
				/// @DnDParent : 793E2326
				/// @DnDArgument : "var" "other.created_match"
				/// @DnDArgument : "op" "3"
				if(other.created_match <= 0)
				{
					/// @DnDAction : YoYo Games.Collisions.If_Collision_Point
					/// @DnDVersion : 1
					/// @DnDHash : 2EFC5957
					/// @DnDComment : We want to check if the current instance of$(13_10)obj_playfield_parent is a "middle" square$(13_10)in a group of 9 squares, and if so we'll use it$(13_10)to create our forced match.$(13_10)$(13_10)Check to see if there is an instance of obj_playfield_parent$(13_10)above this piece.
					/// @DnDParent : 6385290B
					/// @DnDArgument : "x_relative" "1"
					/// @DnDArgument : "y" "-100"
					/// @DnDArgument : "y_relative" "1"
					/// @DnDArgument : "obj" "obj_playfield_parent"
					/// @DnDSaveInfo : "obj" "obj_playfield_parent"
					var l2EFC5957_0 = collision_point(x + 0, y + -100, obj_playfield_parent, true, 1);
					if((l2EFC5957_0))
					{
						/// @DnDAction : YoYo Games.Collisions.If_Collision_Point
						/// @DnDVersion : 1
						/// @DnDHash : 7DDDBFC1
						/// @DnDComment : Check to see if there is an instance of obj_playfield_parent$(13_10)below this piece.
						/// @DnDParent : 2EFC5957
						/// @DnDArgument : "x_relative" "1"
						/// @DnDArgument : "y" "100"
						/// @DnDArgument : "y_relative" "1"
						/// @DnDArgument : "obj" "obj_playfield_parent"
						/// @DnDSaveInfo : "obj" "obj_playfield_parent"
						var l7DDDBFC1_0 = collision_point(x + 0, y + 100, obj_playfield_parent, true, 1);
						if((l7DDDBFC1_0))
						{
							/// @DnDAction : YoYo Games.Collisions.If_Collision_Point
							/// @DnDVersion : 1
							/// @DnDHash : 080CFA1D
							/// @DnDComment : Check to see if there is an instance of obj_playfield_parent$(13_10)to the left of this piece.
							/// @DnDParent : 7DDDBFC1
							/// @DnDArgument : "x" "-100"
							/// @DnDArgument : "x_relative" "1"
							/// @DnDArgument : "y_relative" "1"
							/// @DnDArgument : "obj" "obj_playfield_parent"
							/// @DnDSaveInfo : "obj" "obj_playfield_parent"
							var l080CFA1D_0 = collision_point(x + -100, y + 0, obj_playfield_parent, true, 1);
							if((l080CFA1D_0))
							{
								/// @DnDAction : YoYo Games.Collisions.If_Collision_Point
								/// @DnDVersion : 1
								/// @DnDHash : 7AD9AD59
								/// @DnDComment : Check to see if there is an instance of obj_playfield_parent$(13_10)to the right of this piece.
								/// @DnDParent : 080CFA1D
								/// @DnDArgument : "x" "100"
								/// @DnDArgument : "x_relative" "1"
								/// @DnDArgument : "y_relative" "1"
								/// @DnDArgument : "obj" "obj_playfield_parent"
								/// @DnDSaveInfo : "obj" "obj_playfield_parent"
								var l7AD9AD59_0 = collision_point(x + 100, y + 0, obj_playfield_parent, true, 1);
								if((l7AD9AD59_0))
								{
									/// @DnDAction : YoYo Games.Common.Variable
									/// @DnDVersion : 1
									/// @DnDHash : 62F57744
									/// @DnDComment : Set the variable created_match for the original calling$(13_10)instance (other) to 1 - this will stop other instances$(13_10)of obj_playfield_square from creating guaranteed matches.
									/// @DnDParent : 7AD9AD59
									/// @DnDArgument : "expr" "1"
									/// @DnDArgument : "var" "other.created_match"
									other.created_match = 1;
								
									/// @DnDAction : YoYo Games.Random.Get_Random_Number
									/// @DnDVersion : 1
									/// @DnDHash : 0A9805E2
									/// @DnDComment : pick a random number to assign to each of the pieces$(13_10)from the number of subimages in the sprite$(13_10)spr_matching_pieces.$(13_10)$(13_10)Assign this number to the temporary variable $(13_10)_match_to_create.
									/// @DnDParent : 7AD9AD59
									/// @DnDArgument : "var" "_match_to_create"
									/// @DnDArgument : "var_temp" "1"
									/// @DnDArgument : "type" "1"
									/// @DnDArgument : "max" "sprite_get_number(spr_matching_pieces)-1"
									var _match_to_create = floor(random_range(0, sprite_get_number(spr_matching_pieces)-1 + 1));
								
									/// @DnDAction : YoYo Games.Instances.Create_Instance
									/// @DnDVersion : 1
									/// @DnDHash : 69AFCEE0
									/// @DnDComment : Create a matching piece to the left of this square,$(13_10)and assign its id to the temporary variable _piece_to_force.
									/// @DnDParent : 7AD9AD59
									/// @DnDArgument : "xpos" "-100"
									/// @DnDArgument : "xpos_relative" "1"
									/// @DnDArgument : "ypos_relative" "1"
									/// @DnDArgument : "var" "_piece_to_force"
									/// @DnDArgument : "var_temp" "1"
									/// @DnDArgument : "objectid" "obj_matching_piece"
									/// @DnDArgument : "layer" ""Pieces""
									/// @DnDSaveInfo : "objectid" "obj_matching_piece"
									var _piece_to_force = instance_create_layer(x + -100, y + 0, "Pieces", obj_matching_piece);
								
									/// @DnDAction : YoYo Games.Common.Variable
									/// @DnDVersion : 1
									/// @DnDHash : 44922E63
									/// @DnDComment : Change the image_index of the piece we just created$(13_10)to the same value as _match_to_create
									/// @DnDParent : 7AD9AD59
									/// @DnDArgument : "expr" "_match_to_create"
									/// @DnDArgument : "var" "_piece_to_force.image_index"
									_piece_to_force.image_index = _match_to_create;
								
									/// @DnDAction : YoYo Games.Instances.Create_Instance
									/// @DnDVersion : 1
									/// @DnDHash : 49DC08C7
									/// @DnDComment : Create a matching piece to the right of this square,$(13_10)and assign its id to the temporary variable _piece_to_force.
									/// @DnDParent : 7AD9AD59
									/// @DnDArgument : "xpos" "100"
									/// @DnDArgument : "xpos_relative" "1"
									/// @DnDArgument : "ypos_relative" "1"
									/// @DnDArgument : "var" "_piece_to_force"
									/// @DnDArgument : "var_temp" "1"
									/// @DnDArgument : "objectid" "obj_matching_piece"
									/// @DnDArgument : "layer" ""Pieces""
									/// @DnDSaveInfo : "objectid" "obj_matching_piece"
									var _piece_to_force = instance_create_layer(x + 100, y + 0, "Pieces", obj_matching_piece);
								
									/// @DnDAction : YoYo Games.Common.Variable
									/// @DnDVersion : 1
									/// @DnDHash : 7FE5BF15
									/// @DnDComment : Change the image_index of the piece we just created$(13_10)to the same value as _match_to_create
									/// @DnDParent : 7AD9AD59
									/// @DnDArgument : "expr" "_match_to_create"
									/// @DnDArgument : "var" "_piece_to_force.image_index"
									_piece_to_force.image_index = _match_to_create;
								
									/// @DnDAction : YoYo Games.Instances.Create_Instance
									/// @DnDVersion : 1
									/// @DnDHash : 3D19F7EA
									/// @DnDComment : Create a matching piece below this square,$(13_10)and assign its id to the temporary variable _piece_to_force.
									/// @DnDParent : 7AD9AD59
									/// @DnDArgument : "xpos_relative" "1"
									/// @DnDArgument : "ypos" "100"
									/// @DnDArgument : "ypos_relative" "1"
									/// @DnDArgument : "var" "_piece_to_force"
									/// @DnDArgument : "var_temp" "1"
									/// @DnDArgument : "objectid" "obj_matching_piece"
									/// @DnDArgument : "layer" ""Pieces""
									/// @DnDSaveInfo : "objectid" "obj_matching_piece"
									var _piece_to_force = instance_create_layer(x + 0, y + 100, "Pieces", obj_matching_piece);
								
									/// @DnDAction : YoYo Games.Common.Variable
									/// @DnDVersion : 1
									/// @DnDHash : 7C16C9B6
									/// @DnDComment : Change the image_index of the piece we just created$(13_10)to the same value as _match_to_create
									/// @DnDParent : 7AD9AD59
									/// @DnDArgument : "expr" "_match_to_create"
									/// @DnDArgument : "var" "_piece_to_force.image_index"
									_piece_to_force.image_index = _match_to_create;
								}
							}
						}
					}
				}
			}
		
			/// @DnDAction : YoYo Games.Common.Apply_To
			/// @DnDVersion : 1
			/// @DnDHash : 1323FD70
			/// @DnDComment : Apply the following code to all instances of obj_playfield_parent. We do this separately$(13_10)to the code above because we want to make sure it happens after every instance has $(13_10)performed the code block above.
			/// @DnDApplyTo : {obj_playfield_parent}
			/// @DnDParent : 369CAD20
			with(obj_playfield_parent) {
				/// @DnDAction : YoYo Games.Collisions.If_Collision_Point
				/// @DnDVersion : 1
				/// @DnDHash : 16D76856
				/// @DnDComment : If there is not already an instance of obj_matching piece$(13_10)in this square, we will need to create$(13_10)one.
				/// @DnDParent : 1323FD70
				/// @DnDArgument : "x_relative" "1"
				/// @DnDArgument : "y_relative" "1"
				/// @DnDArgument : "obj" "obj_matching_piece"
				/// @DnDArgument : "not" "1"
				/// @DnDSaveInfo : "obj" "obj_matching_piece"
				var l16D76856_0 = collision_point(x + 0, y + 0, obj_matching_piece, true, 1);
				if(!(l16D76856_0))
				{
					/// @DnDAction : YoYo Games.Instances.Create_Instance
					/// @DnDVersion : 1
					/// @DnDHash : 5498EB9A
					/// @DnDComment : When the play field squares are created, they$(13_10)each create a matching piece on their own square$(13_10)to fill the board at the start of the game.$(13_10)$(13_10)We create them on the "Pieces" layer as this is$(13_10)above the play field.
					/// @DnDParent : 16D76856
					/// @DnDArgument : "xpos_relative" "1"
					/// @DnDArgument : "ypos_relative" "1"
					/// @DnDArgument : "objectid" "obj_matching_piece"
					/// @DnDArgument : "layer" ""Pieces""
					/// @DnDSaveInfo : "objectid" "obj_matching_piece"
					instance_create_layer(x + 0, y + 0, "Pieces", obj_matching_piece);
				}
			}
		}
	}
}