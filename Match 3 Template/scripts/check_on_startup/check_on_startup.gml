/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 1F18FC04
/// @DnDComment : Create a new function that will check to ensure no pieces$(13_10)on the board create a full match at the beginning of the game.
/// @DnDArgument : "funcName" "check_on_startup"
function check_on_startup() 
{
	/// @DnDAction : YoYo Games.Loops.Loop
	/// @DnDVersion : 1
	/// @DnDHash : 34AD6A95
	/// @DnDComment : Start a loop which will increment the image_index of this piece$(13_10)as we check for matches.
	/// @DnDParent : 1F18FC04
	while(true)
	{
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 099DAAD3
		/// @DnDComment : We declare a temporary variable called _vertical_matches$(13_10)to keep track of vertical matches.
		/// @DnDParent : 34AD6A95
		/// @DnDArgument : "var" "_vertical_matches"
		/// @DnDArgument : "value" "0"
		var _vertical_matches = 0;
	
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6D7DDC8F
		/// @DnDComment : We declare a temporary variable called _horiztonal_matches$(13_10)to keep track of horizontal matches.
		/// @DnDParent : 34AD6A95
		/// @DnDArgument : "var" "_horizontal_matches"
		/// @DnDArgument : "value" "0"
		var _horizontal_matches = 0;
	
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5F8B4DAE
		/// @DnDComment : Here we're setting up a temporary variable before we loop$(13_10)through adjacent squares checking how many of them in a row$(13_10)match the current square. This will be incremented and reset$(13_10)multiple times while we check for matches.
		/// @DnDParent : 34AD6A95
		/// @DnDArgument : "var" "_square_to_check"
		/// @DnDArgument : "value" "1"
		var _square_to_check = 1;
	
		/// @DnDAction : YoYo Games.Loops.Loop
		/// @DnDVersion : 1
		/// @DnDHash : 0299DE36
		/// @DnDComment : Start a loop to check all squares to the left of the current object.
		/// @DnDParent : 34AD6A95
		while(true)
		{
			/// @DnDAction : YoYo Games.Collisions.If_Collision_Point
			/// @DnDVersion : 1
			/// @DnDHash : 44377964
			/// @DnDComment : Check squares to the left of the object$(13_10)for pieces. Notice that the x position$(13_10)to check is multiplied by _square_to_check$(13_10)which increments every time this loop$(13_10)runs successfully.$(13_10)$(13_10)If we find a piece we assign its id to$(13_10)a temporary variable called _piece_to_check.
			/// @DnDParent : 0299DE36
			/// @DnDArgument : "x" "_square_to_check*-100"
			/// @DnDArgument : "x_relative" "1"
			/// @DnDArgument : "y_relative" "1"
			/// @DnDArgument : "target" "_piece_to_check"
			/// @DnDArgument : "target_temp" "1"
			/// @DnDArgument : "obj" "obj_matching_piece"
			/// @DnDSaveInfo : "obj" "obj_matching_piece"
			var l44377964_0 = collision_point(x + _square_to_check*-100, y + 0, obj_matching_piece, true, 1);
			var _piece_to_check = l44377964_0;
			if((l44377964_0))
			{
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 48277186
				/// @DnDComment : Check if the image_index of the _piece_to_check$(13_10)is the same as this object's own image_index.$(13_10)$(13_10)i.e. Check if these two objects are matching pieces!
				/// @DnDParent : 44377964
				/// @DnDArgument : "var" "_piece_to_check.image_index"
				/// @DnDArgument : "value" "image_index"
				if(_piece_to_check.image_index == image_index)
				{
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 177FE761
					/// @DnDComment : The piece we were checking matched the color of this one,$(13_10)so increase our counter for horizontal matches.
					/// @DnDParent : 48277186
					/// @DnDArgument : "expr" "1"
					/// @DnDArgument : "expr_relative" "1"
					/// @DnDArgument : "var" "_horizontal_matches"
					_horizontal_matches += 1;
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 3BB6EEEE
					/// @DnDComment : Increment the square to check so that when the loop$(13_10)next runs, it is checking for the next matching piece
					/// @DnDParent : 48277186
					/// @DnDArgument : "expr" "1"
					/// @DnDArgument : "expr_relative" "1"
					/// @DnDArgument : "var" "_square_to_check"
					_square_to_check += 1;
				}
			
				/// @DnDAction : YoYo Games.Common.Else
				/// @DnDVersion : 1
				/// @DnDHash : 0E9C6B9E
				/// @DnDComment : We hit a piece that doesn't match the current object, so$(13_10)stop checking in this direction.
				/// @DnDParent : 44377964
				else
				{
					/// @DnDAction : YoYo Games.Loops.Break
					/// @DnDVersion : 1
					/// @DnDHash : 16FA29FA
					/// @DnDComment : Break the loop and stop checking to$(13_10)the left of this object.
					/// @DnDParent : 0E9C6B9E
					break;
				}
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 1869B5FD
			/// @DnDComment : If there wasn't another piece to the left of $(13_10)the current object.
			/// @DnDParent : 0299DE36
			else
			{
				/// @DnDAction : YoYo Games.Loops.Break
				/// @DnDVersion : 1
				/// @DnDHash : 1048FA07
				/// @DnDComment : Break the loop and stop checking to$(13_10)the left of this object.
				/// @DnDParent : 1869B5FD
				break;
			}
		}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3E143552
		/// @DnDComment : Here we're resetting the temporary variable before we loop$(13_10)through adjacent squares checking how many of them in a row$(13_10)match the current square. This will be incremented and reset$(13_10)multiple times while we check for matches.
		/// @DnDParent : 34AD6A95
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "_square_to_check"
		_square_to_check = 1;
	
		/// @DnDAction : YoYo Games.Loops.Loop
		/// @DnDVersion : 1
		/// @DnDHash : 649A8A90
		/// @DnDComment : Start a loop to check all squares to the right of the current object.
		/// @DnDParent : 34AD6A95
		while(true)
		{
			/// @DnDAction : YoYo Games.Collisions.If_Collision_Point
			/// @DnDVersion : 1
			/// @DnDHash : 6781568D
			/// @DnDComment : Check squares to the right of the object$(13_10)for pieces. Notice that the x position$(13_10)to check is multiplied by _square_to_check$(13_10)which increments every time this loop$(13_10)runs successfully.$(13_10)$(13_10)If we find a piece we assign its id to$(13_10)a temporary variable called _piece_to_check.
			/// @DnDParent : 649A8A90
			/// @DnDArgument : "x" "_square_to_check*100"
			/// @DnDArgument : "x_relative" "1"
			/// @DnDArgument : "y_relative" "1"
			/// @DnDArgument : "target" "_piece_to_check"
			/// @DnDArgument : "target_temp" "1"
			/// @DnDArgument : "obj" "obj_matching_piece"
			/// @DnDSaveInfo : "obj" "obj_matching_piece"
			var l6781568D_0 = collision_point(x + _square_to_check*100, y + 0, obj_matching_piece, true, 1);
			var _piece_to_check = l6781568D_0;
			if((l6781568D_0))
			{
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 5E164E25
				/// @DnDComment : Check if the image_index of the _piece_to_check$(13_10)is the same as this object's own image_index.$(13_10)$(13_10)i.e. Check if these two objects are matching pieces!
				/// @DnDParent : 6781568D
				/// @DnDArgument : "var" "_piece_to_check.image_index"
				/// @DnDArgument : "value" "image_index"
				if(_piece_to_check.image_index == image_index)
				{
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 27493846
					/// @DnDComment : The piece we were checking matched the color of this one,$(13_10)so increase our counter for horizontal matches.
					/// @DnDParent : 5E164E25
					/// @DnDArgument : "expr" "1"
					/// @DnDArgument : "expr_relative" "1"
					/// @DnDArgument : "var" "_horizontal_matches"
					_horizontal_matches += 1;
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 31FA051A
					/// @DnDComment : Increment the square to check so that when the loop$(13_10)next runs, it is checking for the next matching piece
					/// @DnDParent : 5E164E25
					/// @DnDArgument : "expr" "1"
					/// @DnDArgument : "expr_relative" "1"
					/// @DnDArgument : "var" "_square_to_check"
					_square_to_check += 1;
				}
			
				/// @DnDAction : YoYo Games.Common.Else
				/// @DnDVersion : 1
				/// @DnDHash : 63537963
				/// @DnDComment : We hit a piece that doesn't match the current object, so$(13_10)stop checking in this direction.
				/// @DnDParent : 6781568D
				else
				{
					/// @DnDAction : YoYo Games.Loops.Break
					/// @DnDVersion : 1
					/// @DnDHash : 7C600656
					/// @DnDComment : Break the loop and stop checking to$(13_10)the right of this object.
					/// @DnDParent : 63537963
					break;
				}
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 6EBFD4A6
			/// @DnDComment : If there wasn't another piece to the right of $(13_10)the current object.
			/// @DnDParent : 649A8A90
			else
			{
				/// @DnDAction : YoYo Games.Loops.Break
				/// @DnDVersion : 1
				/// @DnDHash : 24105F17
				/// @DnDComment : Break the loop and stop checking to$(13_10)the right of this object.
				/// @DnDParent : 6EBFD4A6
				break;
			}
		}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 27B16AA6
		/// @DnDComment : Here we're resetting the temporary variable before we loop$(13_10)through adjacent squares checking how many of them in a row$(13_10)match the current square. This will be incremented and reset$(13_10)multiple times while we check for matches.
		/// @DnDParent : 34AD6A95
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "_square_to_check"
		_square_to_check = 1;
	
		/// @DnDAction : YoYo Games.Loops.Loop
		/// @DnDVersion : 1
		/// @DnDHash : 6593F4A6
		/// @DnDComment : Start a loop to check all squares directly above the current object.
		/// @DnDParent : 34AD6A95
		while(true)
		{
			/// @DnDAction : YoYo Games.Collisions.If_Collision_Point
			/// @DnDVersion : 1
			/// @DnDHash : 651E9CE0
			/// @DnDComment : Check squares directly above the object$(13_10)for pieces. Notice that the y position$(13_10)to check is multiplied by _square_to_check$(13_10)which increments every time this loop$(13_10)runs successfully.$(13_10)$(13_10)If we find a piece we assign its id to$(13_10)a temporary variable called _piece_to_check.
			/// @DnDParent : 6593F4A6
			/// @DnDArgument : "x_relative" "1"
			/// @DnDArgument : "y" "_square_to_check*-100"
			/// @DnDArgument : "y_relative" "1"
			/// @DnDArgument : "target" "_piece_to_check"
			/// @DnDArgument : "target_temp" "1"
			/// @DnDArgument : "obj" "obj_matching_piece"
			/// @DnDSaveInfo : "obj" "obj_matching_piece"
			var l651E9CE0_0 = collision_point(x + 0, y + _square_to_check*-100, obj_matching_piece, true, 1);
			var _piece_to_check = l651E9CE0_0;
			if((l651E9CE0_0))
			{
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 50358AF4
				/// @DnDComment : Check if the image_index of the _piece_to_check$(13_10)is the same as this object's own image_index.$(13_10)$(13_10)i.e. Check if these two objects are matching pieces!
				/// @DnDParent : 651E9CE0
				/// @DnDArgument : "var" "_piece_to_check.image_index"
				/// @DnDArgument : "value" "image_index"
				if(_piece_to_check.image_index == image_index)
				{
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 309A3890
					/// @DnDComment : The piece we were checking matched the color of this one,$(13_10)so increase our counter for vertical matches.
					/// @DnDParent : 50358AF4
					/// @DnDArgument : "expr" "1"
					/// @DnDArgument : "expr_relative" "1"
					/// @DnDArgument : "var" "_vertical_matches"
					_vertical_matches += 1;
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 1B2A4B7A
					/// @DnDComment : Increment the square to check so that when the loop$(13_10)next runs, it is checking for the next matching piece
					/// @DnDParent : 50358AF4
					/// @DnDArgument : "expr" "1"
					/// @DnDArgument : "expr_relative" "1"
					/// @DnDArgument : "var" "_square_to_check"
					_square_to_check += 1;
				}
			
				/// @DnDAction : YoYo Games.Common.Else
				/// @DnDVersion : 1
				/// @DnDHash : 52604D7C
				/// @DnDComment : We hit a piece that doesn't match the current object, so$(13_10)stop checking in this direction.
				/// @DnDParent : 651E9CE0
				else
				{
					/// @DnDAction : YoYo Games.Loops.Break
					/// @DnDVersion : 1
					/// @DnDHash : 68F667D6
					/// @DnDComment : Break the loop and stop checking$(13_10)above this object.
					/// @DnDParent : 52604D7C
					break;
				}
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 6D05A9CD
			/// @DnDComment : If there wasn't another piece to the left of $(13_10)the current object.
			/// @DnDParent : 6593F4A6
			else
			{
				/// @DnDAction : YoYo Games.Loops.Break
				/// @DnDVersion : 1
				/// @DnDHash : 5BD4C763
				/// @DnDComment : Break the loop and stop checking$(13_10)above this object.
				/// @DnDParent : 6D05A9CD
				break;
			}
		}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 25E3E4AB
		/// @DnDComment : Here we're resetting the temporary variable before we loop$(13_10)through adjacent squares checking how many of them in a row$(13_10)match the current square. This will be incremented and reset$(13_10)multiple times while we check for matches.
		/// @DnDParent : 34AD6A95
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "_square_to_check"
		_square_to_check = 1;
	
		/// @DnDAction : YoYo Games.Loops.Loop
		/// @DnDVersion : 1
		/// @DnDHash : 3D42EBEE
		/// @DnDComment : Start a loop to check all squares directly below the current object.
		/// @DnDParent : 34AD6A95
		while(true)
		{
			/// @DnDAction : YoYo Games.Collisions.If_Collision_Point
			/// @DnDVersion : 1
			/// @DnDHash : 48071751
			/// @DnDComment : Check squares directly below the object$(13_10)for pieces. Notice that the y position$(13_10)to check is multiplied by _square_to_check$(13_10)which increments every time this loop$(13_10)runs successfully.$(13_10)$(13_10)If we find a piece we assign its id to$(13_10)a temporary variable called _piece_to_check.
			/// @DnDParent : 3D42EBEE
			/// @DnDArgument : "x_relative" "1"
			/// @DnDArgument : "y" "_square_to_check*100"
			/// @DnDArgument : "y_relative" "1"
			/// @DnDArgument : "target" "_piece_to_check"
			/// @DnDArgument : "target_temp" "1"
			/// @DnDArgument : "obj" "obj_matching_piece"
			/// @DnDSaveInfo : "obj" "obj_matching_piece"
			var l48071751_0 = collision_point(x + 0, y + _square_to_check*100, obj_matching_piece, true, 1);
			var _piece_to_check = l48071751_0;
			if((l48071751_0))
			{
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 7B94A293
				/// @DnDComment : Check if the image_index of the _piece_to_check$(13_10)is the same as this object's own image_index.$(13_10)$(13_10)i.e. Check if these two objects are matching pieces!
				/// @DnDParent : 48071751
				/// @DnDArgument : "var" "_piece_to_check.image_index"
				/// @DnDArgument : "value" "image_index"
				if(_piece_to_check.image_index == image_index)
				{
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 4842B4C1
					/// @DnDComment : The piece we were checking matched the color of this one,$(13_10)so increase our counter for vertical matches.
					/// @DnDParent : 7B94A293
					/// @DnDArgument : "expr" "1"
					/// @DnDArgument : "expr_relative" "1"
					/// @DnDArgument : "var" "_vertical_matches"
					_vertical_matches += 1;
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 788E7A08
					/// @DnDComment : Increment the square to check so that when the loop$(13_10)next runs, it is checking for the next matching piece
					/// @DnDParent : 7B94A293
					/// @DnDArgument : "expr" "1"
					/// @DnDArgument : "expr_relative" "1"
					/// @DnDArgument : "var" "_square_to_check"
					_square_to_check += 1;
				}
			
				/// @DnDAction : YoYo Games.Common.Else
				/// @DnDVersion : 1
				/// @DnDHash : 2E9A435B
				/// @DnDComment : We hit a piece that doesn't match the current object, so$(13_10)stop checking in this direction.
				/// @DnDParent : 48071751
				else
				{
					/// @DnDAction : YoYo Games.Loops.Break
					/// @DnDVersion : 1
					/// @DnDHash : 08C98CBB
					/// @DnDComment : Break the loop and stop checking$(13_10)below this object.
					/// @DnDParent : 2E9A435B
					break;
				}
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 74625583
			/// @DnDComment : If there wasn't another piece to the left of $(13_10)the current object.
			/// @DnDParent : 3D42EBEE
			else
			{
				/// @DnDAction : YoYo Games.Loops.Break
				/// @DnDVersion : 1
				/// @DnDHash : 3B3C41F9
				/// @DnDComment : Break the loop and stop checking$(13_10)below this object.
				/// @DnDParent : 74625583
				break;
			}
		}
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 325CF46D
		/// @DnDComment : This expression checks whether either a horizontal or vertical match$(13_10)was found. >= means "greater than or equal to" and || means "or".$(13_10)$(13_10)We're using an expression here because it makes more sense than checking$(13_10)each variable individually in separated "if-else" checks.
		/// @DnDParent : 34AD6A95
		/// @DnDArgument : "expr" "_horizontal_matches >= 2 || _vertical_matches >= 2"
		if(_horizontal_matches >= 2 || _vertical_matches >= 2)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6841E856
			/// @DnDComment : This object would create a match and we don't $(13_10)want it to...$(13_10)$(13_10)Increment the image_index of this piece by 1,$(13_10)but then keep it between 0 and the total number$(13_10)of images by using "mod 6".$(13_10)$(13_10)The loop will then begin again to check if the$(13_10)object still creates a matching line.
			/// @DnDParent : 325CF46D
			/// @DnDArgument : "expr" "(image_index+1) mod 6"
			/// @DnDArgument : "var" "image_index"
			image_index = (image_index+1) mod 6;
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 3D6761D7
		/// @DnDComment : No match was found
		/// @DnDParent : 34AD6A95
		else
		{
			/// @DnDAction : YoYo Games.Loops.Break
			/// @DnDVersion : 1
			/// @DnDHash : 6A06529B
			/// @DnDComment : Break the loop, this object can keep its$(13_10)current image_index.
			/// @DnDParent : 3D6761D7
			break;
		}
	}
}