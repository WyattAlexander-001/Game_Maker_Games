/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 555098CB
/// @DnDComment : Create a new function which will check if there are any valid moves$(13_10)left on the board.
/// @DnDArgument : "funcName" "check_board_valid"
function check_board_valid() 
{
	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 4932D3EE
	/// @DnDComment : Set a global variable called global.valid_moves to 0,$(13_10)this will keep track of whether there are any valid$(13_10)moves on the board.
	/// @DnDParent : 555098CB
	/// @DnDArgument : "var" "valid_moves"
	global.valid_moves = 0;

	/// @DnDAction : YoYo Games.Common.Apply_To
	/// @DnDVersion : 1
	/// @DnDHash : 0434333E
	/// @DnDComment : Apply the following code to all instances of obj_matching_piece
	/// @DnDApplyTo : {obj_matching_piece}
	/// @DnDParent : 555098CB
	with(obj_matching_piece) {
		/// @DnDAction : YoYo Games.Loops.For_Loop
		/// @DnDVersion : 1
		/// @DnDHash : 45B0288D
		/// @DnDComment : Begin a for loop which will run through four iterations. This is because$(13_10)we will check what would happen if each piece moved up, down, left or$(13_10)right on the next turn and see if there are any matches.
		/// @DnDParent : 0434333E
		/// @DnDArgument : "init_temp" "1"
		/// @DnDArgument : "cond" "i < 4"
		for(var i = 0; i < 4; i += 1) {
			/// @DnDAction : YoYo Games.Common.Temp_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6037AD02
			/// @DnDComment : Create a new temporary variable called _x_to_check$(13_10)$(13_10)We set this to the current x position, plus lengthdir_x( 100, i*90)$(13_10)This will tell each iteration of the for loop to check the squares$(13_10)above, below, left and right of the current piece for matches.
			/// @DnDParent : 45B0288D
			/// @DnDArgument : "var" "_x_to_check"
			/// @DnDArgument : "value" "x+lengthdir_x(100,i*90)"
			var _x_to_check = x+lengthdir_x(100,i*90);
		
			/// @DnDAction : YoYo Games.Common.Temp_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 35151BC6
			/// @DnDComment : Create a new temporary variable called _y_to_check$(13_10)$(13_10)We set this to the current y position, plus lengthdir_y( 100, i*90)$(13_10)This will tell each iteration of the for loop to check the squares$(13_10)above, below, left and right of the current piece for matches.
			/// @DnDParent : 45B0288D
			/// @DnDArgument : "var" "_y_to_check"
			/// @DnDArgument : "value" "y+lengthdir_y(100,i*90)"
			var _y_to_check = y+lengthdir_y(100,i*90);
		
			/// @DnDAction : YoYo Games.Common.Temp_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 44511F78
			/// @DnDComment : Declare a temporary variable called _vertical_matches$(13_10)to keep track of vertical matches.
			/// @DnDParent : 45B0288D
			/// @DnDArgument : "var" "_vertical_matches"
			/// @DnDArgument : "value" "0"
			var _vertical_matches = 0;
		
			/// @DnDAction : YoYo Games.Common.Temp_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7812B0C6
			/// @DnDComment : Declare a temporary variable called _horizontal_matches$(13_10)to keep track of horizontal matches.
			/// @DnDParent : 45B0288D
			/// @DnDArgument : "var" "_horizontal_matches"
			/// @DnDArgument : "value" "0"
			var _horizontal_matches = 0;
		
			/// @DnDAction : YoYo Games.Common.Temp_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 55F36E41
			/// @DnDComment : Declare a temporary variable called _square_to_check which will$(13_10)increase as we check each square.
			/// @DnDParent : 45B0288D
			/// @DnDArgument : "var" "_square_to_check"
			/// @DnDArgument : "value" "1"
			var _square_to_check = 1;
		
			/// @DnDAction : YoYo Games.Loops.Loop
			/// @DnDVersion : 1
			/// @DnDHash : 52BFE2BE
			/// @DnDComment : Start a loop to check all squares to the left of the current _x_to_check & _y_to_check coordinates
			/// @DnDParent : 45B0288D
			while(true)
			{
				/// @DnDAction : YoYo Games.Collisions.If_Collision_Point
				/// @DnDVersion : 1
				/// @DnDHash : 13527CF8
				/// @DnDComment : If there is not a playfield square in the _x_to_check or _y_to_check$(13_10)position, this piece can't be swapped into it, so don't check it for$(13_10)matches.
				/// @DnDParent : 52BFE2BE
				/// @DnDArgument : "x" "_x_to_check"
				/// @DnDArgument : "y" "_y_to_check"
				/// @DnDArgument : "obj" "obj_playfield_parent"
				/// @DnDArgument : "not" "1"
				/// @DnDSaveInfo : "obj" "obj_playfield_parent"
				var l13527CF8_0 = collision_point(_x_to_check, _y_to_check, obj_playfield_parent, true, 1);
				if(!(l13527CF8_0))
				{
					/// @DnDAction : YoYo Games.Loops.Break
					/// @DnDVersion : 1
					/// @DnDHash : 23BC8231
					/// @DnDComment : Break the loop.
					/// @DnDParent : 13527CF8
					break;
				}
			
				/// @DnDAction : YoYo Games.Collisions.If_Collision_Point
				/// @DnDVersion : 1
				/// @DnDHash : 315D62E8
				/// @DnDComment : Check squares to the left of the _x_to_check & _y_to_check coordinates$(13_10)for pieces. Notice that the x position to check is multiplied by _square_to_check$(13_10)which increments every time this loop runs successfully.$(13_10)$(13_10)If we find a piece we assign its id to a temporary variable called _piece_to_check.
				/// @DnDParent : 52BFE2BE
				/// @DnDArgument : "x" "_x_to_check+(_square_to_check*-100)"
				/// @DnDArgument : "y" "_y_to_check"
				/// @DnDArgument : "target" "_piece_to_check"
				/// @DnDArgument : "target_temp" "1"
				/// @DnDArgument : "obj" "obj_matching_piece"
				/// @DnDSaveInfo : "obj" "obj_matching_piece"
				var l315D62E8_0 = collision_point(_x_to_check+(_square_to_check*-100), _y_to_check, obj_matching_piece, true, 1);
				var _piece_to_check = l315D62E8_0;
				if((l315D62E8_0))
				{
					/// @DnDAction : YoYo Games.Common.If_Variable
					/// @DnDVersion : 1
					/// @DnDHash : 539D43A2
					/// @DnDComment : Check if the image_index of the _piece_to_check$(13_10)is the same as this object's own image_index.$(13_10)$(13_10)i.e. Check if these two objects are matching pieces!
					/// @DnDParent : 315D62E8
					/// @DnDArgument : "var" "_piece_to_check.image_index"
					/// @DnDArgument : "value" "image_index"
					if(_piece_to_check.image_index == image_index)
					{
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 361C5585
						/// @DnDComment : The piece we were checking matched the color of this one,$(13_10)so increase our counter for horizontal matches.
						/// @DnDParent : 539D43A2
						/// @DnDArgument : "expr" "1"
						/// @DnDArgument : "expr_relative" "1"
						/// @DnDArgument : "var" "_horizontal_matches"
						_horizontal_matches += 1;
					
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 6A3EFC82
						/// @DnDComment : Increment the square to check so that when the loop$(13_10)next runs, it is checking for the next matching piece
						/// @DnDParent : 539D43A2
						/// @DnDArgument : "expr" "1"
						/// @DnDArgument : "expr_relative" "1"
						/// @DnDArgument : "var" "_square_to_check"
						_square_to_check += 1;
					}
				
					/// @DnDAction : YoYo Games.Common.Else
					/// @DnDVersion : 1
					/// @DnDHash : 12B4E57A
					/// @DnDComment : We hit a piece that doesn't match the current object, so$(13_10)stop checking in this direction.
					/// @DnDParent : 315D62E8
					else
					{
						/// @DnDAction : YoYo Games.Loops.Break
						/// @DnDVersion : 1
						/// @DnDHash : 63332E75
						/// @DnDComment : Break the loop.
						/// @DnDParent : 12B4E57A
						break;
					}
				}
			
				/// @DnDAction : YoYo Games.Common.Else
				/// @DnDVersion : 1
				/// @DnDHash : 7833F625
				/// @DnDComment : If there wasn't another piece to the left of $(13_10)the _x_to_check & _y_to_check coordinates.
				/// @DnDParent : 52BFE2BE
				else
				{
					/// @DnDAction : YoYo Games.Loops.Break
					/// @DnDVersion : 1
					/// @DnDHash : 10231F56
					/// @DnDComment : Break the loop.
					/// @DnDParent : 7833F625
					break;
				}
			}
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 374147B6
			/// @DnDComment : Here we're resetting the temporary variable before we loop$(13_10)through adjacent squares checking how many of them in a row$(13_10)match the current square. This will be incremented and reset$(13_10)multiple times while we check for matches.
			/// @DnDParent : 45B0288D
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "var" "_square_to_check"
			_square_to_check = 1;
		
			/// @DnDAction : YoYo Games.Loops.Loop
			/// @DnDVersion : 1
			/// @DnDHash : 0D629F8E
			/// @DnDComment : Start a loop to check all squares to the right of the current _x_to_check & _y_to_check coordinates.
			/// @DnDParent : 45B0288D
			while(true)
			{
				/// @DnDAction : YoYo Games.Collisions.If_Collision_Point
				/// @DnDVersion : 1
				/// @DnDHash : 1F149F7A
				/// @DnDComment : If there is not a playfield square in the _x_to_check or _y_to_check$(13_10)position, this piece can't be swapped into it, so don't check it for$(13_10)matches.
				/// @DnDParent : 0D629F8E
				/// @DnDArgument : "x" "_x_to_check"
				/// @DnDArgument : "y" "_y_to_check"
				/// @DnDArgument : "obj" "obj_playfield_parent"
				/// @DnDArgument : "not" "1"
				/// @DnDSaveInfo : "obj" "obj_playfield_parent"
				var l1F149F7A_0 = collision_point(_x_to_check, _y_to_check, obj_playfield_parent, true, 1);
				if(!(l1F149F7A_0))
				{
					/// @DnDAction : YoYo Games.Loops.Break
					/// @DnDVersion : 1
					/// @DnDHash : 1D73095B
					/// @DnDComment : Break the loop.
					/// @DnDParent : 1F149F7A
					break;
				}
			
				/// @DnDAction : YoYo Games.Collisions.If_Collision_Point
				/// @DnDVersion : 1
				/// @DnDHash : 2B14B987
				/// @DnDComment : Check squares to the right of the _x_to_check & _y_to_check coordinates$(13_10)for pieces. Notice that the x position to check is multiplied by _square_to_check$(13_10)which increments every time this loop runs successfully.$(13_10)$(13_10)If we find a piece we assign its id to a temporary variable called _piece_to_check.
				/// @DnDParent : 0D629F8E
				/// @DnDArgument : "x" "_x_to_check+(_square_to_check*100)"
				/// @DnDArgument : "y" "_y_to_check"
				/// @DnDArgument : "target" "_piece_to_check"
				/// @DnDArgument : "target_temp" "1"
				/// @DnDArgument : "obj" "obj_matching_piece"
				/// @DnDSaveInfo : "obj" "obj_matching_piece"
				var l2B14B987_0 = collision_point(_x_to_check+(_square_to_check*100), _y_to_check, obj_matching_piece, true, 1);
				var _piece_to_check = l2B14B987_0;
				if((l2B14B987_0))
				{
					/// @DnDAction : YoYo Games.Common.If_Variable
					/// @DnDVersion : 1
					/// @DnDHash : 0530B38F
					/// @DnDComment : Check if the image_index of the _piece_to_check$(13_10)is the same as this object's own image_index.$(13_10)$(13_10)i.e. Check if these two objects are matching pieces!
					/// @DnDParent : 2B14B987
					/// @DnDArgument : "var" "_piece_to_check.image_index"
					/// @DnDArgument : "value" "image_index"
					if(_piece_to_check.image_index == image_index)
					{
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 52EE8AB7
						/// @DnDComment : The piece we were checking matched the color of this one,$(13_10)so increase our counter for horizontal matches.
						/// @DnDParent : 0530B38F
						/// @DnDArgument : "expr" "1"
						/// @DnDArgument : "expr_relative" "1"
						/// @DnDArgument : "var" "_horizontal_matches"
						_horizontal_matches += 1;
					
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 4171AF69
						/// @DnDComment : Increment the square to check so that when the loop$(13_10)next runs, it is checking for the next matching piece
						/// @DnDParent : 0530B38F
						/// @DnDArgument : "expr" "1"
						/// @DnDArgument : "expr_relative" "1"
						/// @DnDArgument : "var" "_square_to_check"
						_square_to_check += 1;
					}
				
					/// @DnDAction : YoYo Games.Common.Else
					/// @DnDVersion : 1
					/// @DnDHash : 28B372AD
					/// @DnDComment : We hit a piece that doesn't match the current _x_to_check & _y_to_check coordinates, so$(13_10)stop checking in this direction.
					/// @DnDParent : 2B14B987
					else
					{
						/// @DnDAction : YoYo Games.Loops.Break
						/// @DnDVersion : 1
						/// @DnDHash : 3B81F204
						/// @DnDComment : Break the loop.
						/// @DnDParent : 28B372AD
						break;
					}
				}
			
				/// @DnDAction : YoYo Games.Common.Else
				/// @DnDVersion : 1
				/// @DnDHash : 5CF04B95
				/// @DnDComment : If there wasn't another piece to the right of the _x_to_check & _y_to_check coordinates.
				/// @DnDParent : 0D629F8E
				else
				{
					/// @DnDAction : YoYo Games.Loops.Break
					/// @DnDVersion : 1
					/// @DnDHash : 2B6D58CC
					/// @DnDComment : Break the loop.
					/// @DnDParent : 5CF04B95
					break;
				}
			}
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 61780D29
			/// @DnDComment : Here we're resetting the temporary variable before we loop$(13_10)through adjacent squares checking how many of them in a row$(13_10)match the current square. This will be incremented and reset$(13_10)multiple times while we check for matches.
			/// @DnDParent : 45B0288D
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "var" "_square_to_check"
			_square_to_check = 1;
		
			/// @DnDAction : YoYo Games.Loops.Loop
			/// @DnDVersion : 1
			/// @DnDHash : 23A7DF79
			/// @DnDComment : Start a loop to check all squares directly above the _x_to_check & _y_to_check coordinates.
			/// @DnDParent : 45B0288D
			while(true)
			{
				/// @DnDAction : YoYo Games.Collisions.If_Collision_Point
				/// @DnDVersion : 1
				/// @DnDHash : 581F96EC
				/// @DnDComment : If there is not a playfield square in the _x_to_check or _y_to_check$(13_10)position, this piece can't be swapped into it, so don't check it for$(13_10)matches.
				/// @DnDParent : 23A7DF79
				/// @DnDArgument : "x" "_x_to_check"
				/// @DnDArgument : "y" "_y_to_check"
				/// @DnDArgument : "obj" "obj_playfield_parent"
				/// @DnDArgument : "not" "1"
				/// @DnDSaveInfo : "obj" "obj_playfield_parent"
				var l581F96EC_0 = collision_point(_x_to_check, _y_to_check, obj_playfield_parent, true, 1);
				if(!(l581F96EC_0))
				{
					/// @DnDAction : YoYo Games.Loops.Break
					/// @DnDVersion : 1
					/// @DnDHash : 60441529
					/// @DnDComment : Break the loop.
					/// @DnDParent : 581F96EC
					break;
				}
			
				/// @DnDAction : YoYo Games.Collisions.If_Collision_Point
				/// @DnDVersion : 1
				/// @DnDHash : 361521C0
				/// @DnDComment : Check squares directly above the _x_to_check & _y_to_check coordinates$(13_10)for pieces. Notice that the y position to check is multiplied by _square_to_check$(13_10)which increments every time this loop runs successfully.$(13_10)$(13_10)If we find a piece we assign its id to a temporary variable called _piece_to_check.
				/// @DnDParent : 23A7DF79
				/// @DnDArgument : "x" "_x_to_check"
				/// @DnDArgument : "y" "_y_to_check+(_square_to_check*-100)"
				/// @DnDArgument : "target" "_piece_to_check"
				/// @DnDArgument : "target_temp" "1"
				/// @DnDArgument : "obj" "obj_matching_piece"
				/// @DnDSaveInfo : "obj" "obj_matching_piece"
				var l361521C0_0 = collision_point(_x_to_check, _y_to_check+(_square_to_check*-100), obj_matching_piece, true, 1);
				var _piece_to_check = l361521C0_0;
				if((l361521C0_0))
				{
					/// @DnDAction : YoYo Games.Common.If_Variable
					/// @DnDVersion : 1
					/// @DnDHash : 58639BA7
					/// @DnDComment : Check if the image_index of the _piece_to_check$(13_10)is the same as this object's own image_index.$(13_10)$(13_10)i.e. Check if these two objects are matching pieces!
					/// @DnDParent : 361521C0
					/// @DnDArgument : "var" "_piece_to_check.image_index"
					/// @DnDArgument : "value" "image_index"
					if(_piece_to_check.image_index == image_index)
					{
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 4ADD333B
						/// @DnDComment : The piece we were checking matched the color of this one,$(13_10)so increase our counter for vertical matches.
						/// @DnDParent : 58639BA7
						/// @DnDArgument : "expr" "1"
						/// @DnDArgument : "expr_relative" "1"
						/// @DnDArgument : "var" "_vertical_matches"
						_vertical_matches += 1;
					
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 59A61DD0
						/// @DnDComment : Increment the square to check so that when the loop$(13_10)next runs, it is checking for the next matching piece
						/// @DnDParent : 58639BA7
						/// @DnDArgument : "expr" "1"
						/// @DnDArgument : "expr_relative" "1"
						/// @DnDArgument : "var" "_square_to_check"
						_square_to_check += 1;
					}
				
					/// @DnDAction : YoYo Games.Common.Else
					/// @DnDVersion : 1
					/// @DnDHash : 75DAD617
					/// @DnDComment : We hit a piece that doesn't match the current _x_to_check & _y_to_check coordinates, so$(13_10)stop checking in this direction.
					/// @DnDParent : 361521C0
					else
					{
						/// @DnDAction : YoYo Games.Loops.Break
						/// @DnDVersion : 1
						/// @DnDHash : 17AB9E90
						/// @DnDComment : Break the loop.
						/// @DnDParent : 75DAD617
						break;
					}
				}
			
				/// @DnDAction : YoYo Games.Common.Else
				/// @DnDVersion : 1
				/// @DnDHash : 07393C28
				/// @DnDComment : If there wasn't another piece to the left of $(13_10)the current _x_to_check & _y_to_check coordinates.
				/// @DnDParent : 23A7DF79
				else
				{
					/// @DnDAction : YoYo Games.Loops.Break
					/// @DnDVersion : 1
					/// @DnDHash : 04AAACC7
					/// @DnDComment : Break the loop.
					/// @DnDParent : 07393C28
					break;
				}
			}
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4500530E
			/// @DnDComment : Here we're resetting the temporary variable before we loop$(13_10)through adjacent squares checking how many of them in a row$(13_10)match the current square. This will be incremented and reset$(13_10)multiple times while we check for matches.
			/// @DnDParent : 45B0288D
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "var" "_square_to_check"
			_square_to_check = 1;
		
			/// @DnDAction : YoYo Games.Loops.Loop
			/// @DnDVersion : 1
			/// @DnDHash : 6EF7D854
			/// @DnDComment : Start a loop to check all squares directly below the current _x_to_check & _y_to_check coordinates.
			/// @DnDParent : 45B0288D
			while(true)
			{
				/// @DnDAction : YoYo Games.Collisions.If_Collision_Point
				/// @DnDVersion : 1
				/// @DnDHash : 4A5BA002
				/// @DnDComment : If there is not a playfield square in the _x_to_check or _y_to_check$(13_10)position, this piece can't be swapped into it, so don't check it for$(13_10)matches.
				/// @DnDParent : 6EF7D854
				/// @DnDArgument : "x" "_x_to_check"
				/// @DnDArgument : "y" "_y_to_check"
				/// @DnDArgument : "obj" "obj_playfield_parent"
				/// @DnDArgument : "not" "1"
				/// @DnDSaveInfo : "obj" "obj_playfield_parent"
				var l4A5BA002_0 = collision_point(_x_to_check, _y_to_check, obj_playfield_parent, true, 1);
				if(!(l4A5BA002_0))
				{
					/// @DnDAction : YoYo Games.Loops.Break
					/// @DnDVersion : 1
					/// @DnDHash : 69BA46C5
					/// @DnDComment : Break the loop.
					/// @DnDParent : 4A5BA002
					break;
				}
			
				/// @DnDAction : YoYo Games.Collisions.If_Collision_Point
				/// @DnDVersion : 1
				/// @DnDHash : 575858E4
				/// @DnDComment : Check squares directly below the _x_to_check & _y_to_check coordinates$(13_10)for pieces. Notice that the y position to check is multiplied by _square_to_check$(13_10)which increments every time this loop runs successfully.$(13_10)$(13_10)If we find a piece we assign its id to a temporary variable called _piece_to_check.
				/// @DnDParent : 6EF7D854
				/// @DnDArgument : "x" "_x_to_check"
				/// @DnDArgument : "y" "_y_to_check+(_square_to_check*100)"
				/// @DnDArgument : "target" "_piece_to_check"
				/// @DnDArgument : "target_temp" "1"
				/// @DnDArgument : "obj" "obj_matching_piece"
				/// @DnDSaveInfo : "obj" "obj_matching_piece"
				var l575858E4_0 = collision_point(_x_to_check, _y_to_check+(_square_to_check*100), obj_matching_piece, true, 1);
				var _piece_to_check = l575858E4_0;
				if((l575858E4_0))
				{
					/// @DnDAction : YoYo Games.Common.If_Variable
					/// @DnDVersion : 1
					/// @DnDHash : 5CD358D2
					/// @DnDComment : Check if the image_index of the _piece_to_check$(13_10)is the same as this object's own image_index.$(13_10)$(13_10)i.e. Check if these two objects are matching pieces!
					/// @DnDParent : 575858E4
					/// @DnDArgument : "var" "_piece_to_check.image_index"
					/// @DnDArgument : "value" "image_index"
					if(_piece_to_check.image_index == image_index)
					{
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 08AB6AE6
						/// @DnDComment : The piece we were checking matched the color of this one,$(13_10)so increase our counter for vertical matches.
						/// @DnDParent : 5CD358D2
						/// @DnDArgument : "expr" "1"
						/// @DnDArgument : "expr_relative" "1"
						/// @DnDArgument : "var" "_vertical_matches"
						_vertical_matches += 1;
					
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 56543364
						/// @DnDComment : Increment the square to check so that when the loop$(13_10)next runs, it is checking for the next matching piece
						/// @DnDParent : 5CD358D2
						/// @DnDArgument : "expr" "1"
						/// @DnDArgument : "expr_relative" "1"
						/// @DnDArgument : "var" "_square_to_check"
						_square_to_check += 1;
					}
				
					/// @DnDAction : YoYo Games.Common.Else
					/// @DnDVersion : 1
					/// @DnDHash : 6294A3DE
					/// @DnDComment : We hit a piece that doesn't match the current _x_to_check & _y_to_check coordinates, so$(13_10)stop checking in this direction.
					/// @DnDParent : 575858E4
					else
					{
						/// @DnDAction : YoYo Games.Loops.Break
						/// @DnDVersion : 1
						/// @DnDHash : 5FC84C0E
						/// @DnDComment : Break the loop.
						/// @DnDParent : 6294A3DE
						break;
					}
				}
			
				/// @DnDAction : YoYo Games.Common.Else
				/// @DnDVersion : 1
				/// @DnDHash : 6ABCAECD
				/// @DnDComment : If there wasn't another piece to the left of $(13_10)the current _x_to_check & _y_to_check coordinates.
				/// @DnDParent : 6EF7D854
				else
				{
					/// @DnDAction : YoYo Games.Loops.Break
					/// @DnDVersion : 1
					/// @DnDHash : 2E3B3A95
					/// @DnDComment : Break the loop.
					/// @DnDParent : 6ABCAECD
					break;
				}
			}
		
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 6D7D9870
			/// @DnDComment : This expression checks whether either a horizontal or vertical match$(13_10)was found. >= means "greater than or equal to" and || means "or".$(13_10)$(13_10)We're using an expression here because it makes more sense than checking$(13_10)each variable individually in separated "if-else" checks.
			/// @DnDParent : 45B0288D
			/// @DnDArgument : "expr" "_horizontal_matches >= 2 || _vertical_matches >= 2"
			if(_horizontal_matches >= 2 || _vertical_matches >= 2)
			{
				/// @DnDAction : YoYo Games.Common.Set_Global
				/// @DnDVersion : 1
				/// @DnDHash : 611AC12C
				/// @DnDComment : We found at least one match, so set the global variable global.valid_moves relative to 1.$(13_10)$(13_10)This will tell obj_controller to allow the game to continue, rather than resetting the$(13_10)board due to a lack of valid remaining moves.
				/// @DnDParent : 6D7D9870
				/// @DnDArgument : "value" "1"
				/// @DnDArgument : "value_relative" "1"
				/// @DnDArgument : "var" "valid_moves"
				global.valid_moves += 1;
			
				/// @DnDAction : YoYo Games.Loops.Break
				/// @DnDVersion : 1
				/// @DnDHash : 306A08D5
				/// @DnDComment : Break the for loop, since we found a match we no longer need to keep checking for valid$(13_10)matches.
				/// @DnDParent : 6D7D9870
				break;
			}
		}
	}
}