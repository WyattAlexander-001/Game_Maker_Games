/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2BBFC828
/// @DnDComment : Set the currently_matched variable for this piece to "1" - $(13_10)this effectively tells this piece that it has matched$(13_10)with itself, and will be used when calculating whether$(13_10)or not this piece was in a matching set at the end of this$(13_10)event.
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "currently_matched"
currently_matched = 1;

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 54FBCA4C
/// @DnDComment : We're about to check for matches after moving this piece,$(13_10)so we declare a temporary variable called _vertical_matches$(13_10)to keep track.
/// @DnDArgument : "var" "_vertical_matches"
/// @DnDArgument : "value" "0"
var _vertical_matches = 0;

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 3B163B0E
/// @DnDComment : We're about to check for matches after moving this piece,$(13_10)so we declare a temporary variable called _horiztonal_matches$(13_10)to keep track.
/// @DnDArgument : "var" "_horizontal_matches"
/// @DnDArgument : "value" "0"
var _horizontal_matches = 0;

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 3349CB81
/// @DnDComment : Here we're setting up a temporary variable before we loop$(13_10)through adjacent squares checking how many of them in a row$(13_10)match the current square. This will be incremented and reset$(13_10)multiple times while we check for matches.
/// @DnDArgument : "var" "_square_to_check"
/// @DnDArgument : "value" "1"
var _square_to_check = 1;

/// @DnDAction : YoYo Games.Loops.Loop
/// @DnDVersion : 1
/// @DnDHash : 70396440
/// @DnDComment : Start a loop to check all squares to the left of the current object.
while(true)
{
	/// @DnDAction : YoYo Games.Collisions.If_Collision_Point
	/// @DnDVersion : 1
	/// @DnDHash : 7DD59265
	/// @DnDComment : Check squares to the left of the object$(13_10)for pieces. Notice that the x position$(13_10)to check is multiplied by _square_to_check$(13_10)which increments every time this loop$(13_10)runs successfully.$(13_10)$(13_10)If we find a piece we assign its id to$(13_10)a temporary variable called _piece_to_check.
	/// @DnDParent : 70396440
	/// @DnDArgument : "x" "_square_to_check*-100"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "target" "_piece_to_check"
	/// @DnDArgument : "target_temp" "1"
	/// @DnDArgument : "obj" "obj_matching_piece"
	/// @DnDSaveInfo : "obj" "obj_matching_piece"
	var l7DD59265_0 = collision_point(x + _square_to_check*-100, y + 0, obj_matching_piece, true, 1);
	var _piece_to_check = l7DD59265_0;
	if((l7DD59265_0))
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5A57BAAE
		/// @DnDComment : Check if the image_index of the _piece_to_check$(13_10)is the same as this object's own image_index.$(13_10)$(13_10)i.e. Check if these two objects are matching pieces!
		/// @DnDParent : 7DD59265
		/// @DnDArgument : "var" "_piece_to_check.image_index"
		/// @DnDArgument : "value" "image_index"
		if(_piece_to_check.image_index == image_index)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 73E7A96A
			/// @DnDComment : The piece we were checking matched the color of this one,$(13_10)so increase our counter for horizontal matches.
			/// @DnDParent : 5A57BAAE
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "_horizontal_matches"
			_horizontal_matches += 1;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2F148787
			/// @DnDComment : Update the currently_matched variable of the other piece$(13_10)to let it know that it is part of a matching set.
			/// @DnDParent : 5A57BAAE
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "var" "_piece_to_check.currently_matched"
			_piece_to_check.currently_matched = 1;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 1C92E2CF
			/// @DnDComment : Increment the square to check so that when the loop$(13_10)next runs, it is checking for the next matching piece
			/// @DnDParent : 5A57BAAE
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "_square_to_check"
			_square_to_check += 1;
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 3119F885
		/// @DnDComment : We hit a piece that doesn't match the current object, so$(13_10)stop checking in this direction.
		/// @DnDParent : 7DD59265
		else
		{
			/// @DnDAction : YoYo Games.Loops.Break
			/// @DnDVersion : 1
			/// @DnDHash : 0E685E5F
			/// @DnDComment : Break the loop and stop checking to$(13_10)the left of this object.
			/// @DnDParent : 3119F885
			break;
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 1BDCF0D8
	/// @DnDComment : If there wasn't another piece to the left of $(13_10)the current object.
	/// @DnDParent : 70396440
	else
	{
		/// @DnDAction : YoYo Games.Loops.Break
		/// @DnDVersion : 1
		/// @DnDHash : 78D21D17
		/// @DnDComment : Break the loop and stop checking to$(13_10)the left of this object.
		/// @DnDParent : 1BDCF0D8
		break;
	}
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4718F304
/// @DnDComment : Here we're resetting the temporary variable before we loop$(13_10)through adjacent squares checking how many of them in a row$(13_10)match the current square. This will be incremented and reset$(13_10)multiple times while we check for matches.
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "_square_to_check"
_square_to_check = 1;

/// @DnDAction : YoYo Games.Loops.Loop
/// @DnDVersion : 1
/// @DnDHash : 640A67D1
/// @DnDComment : Start a loop to check all squares to the right of the current object.
while(true)
{
	/// @DnDAction : YoYo Games.Collisions.If_Collision_Point
	/// @DnDVersion : 1
	/// @DnDHash : 0CBDF5AE
	/// @DnDComment : Check squares to the right of the object$(13_10)for pieces. Notice that the x position$(13_10)to check is multiplied by _square_to_check$(13_10)which increments every time this loop$(13_10)runs successfully.$(13_10)$(13_10)If we find a piece we assign its id to$(13_10)a temporary variable called _piece_to_check.
	/// @DnDParent : 640A67D1
	/// @DnDArgument : "x" "_square_to_check*100"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "target" "_piece_to_check"
	/// @DnDArgument : "target_temp" "1"
	/// @DnDArgument : "obj" "obj_matching_piece"
	/// @DnDSaveInfo : "obj" "obj_matching_piece"
	var l0CBDF5AE_0 = collision_point(x + _square_to_check*100, y + 0, obj_matching_piece, true, 1);
	var _piece_to_check = l0CBDF5AE_0;
	if((l0CBDF5AE_0))
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0EBFE07D
		/// @DnDComment : Check if the image_index of the _piece_to_check$(13_10)is the same as this object's own image_index.$(13_10)$(13_10)i.e. Check if these two objects are matching pieces!
		/// @DnDParent : 0CBDF5AE
		/// @DnDArgument : "var" "_piece_to_check.image_index"
		/// @DnDArgument : "value" "image_index"
		if(_piece_to_check.image_index == image_index)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 499993E1
			/// @DnDComment : The piece we were checking matched the color of this one,$(13_10)so increase our counter for horizontal matches.
			/// @DnDParent : 0EBFE07D
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "_horizontal_matches"
			_horizontal_matches += 1;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7B8BDDA8
			/// @DnDComment : Update the currently_matched variable of the other piece$(13_10)to let it know that it is part of a matching set.
			/// @DnDParent : 0EBFE07D
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "var" "_piece_to_check.currently_matched"
			_piece_to_check.currently_matched = 1;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0BB62A12
			/// @DnDComment : Increment the square to check so that when the loop$(13_10)next runs, it is checking for the next matching piece
			/// @DnDParent : 0EBFE07D
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "_square_to_check"
			_square_to_check += 1;
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 5FBFA4A7
		/// @DnDComment : We hit a piece that doesn't match the current object, so$(13_10)stop checking in this direction.
		/// @DnDParent : 0CBDF5AE
		else
		{
			/// @DnDAction : YoYo Games.Loops.Break
			/// @DnDVersion : 1
			/// @DnDHash : 036E6758
			/// @DnDComment : Break the loop and stop checking to$(13_10)the right of this object.
			/// @DnDParent : 5FBFA4A7
			break;
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 60E32122
	/// @DnDComment : If there wasn't another piece to the right of $(13_10)the current object.
	/// @DnDParent : 640A67D1
	else
	{
		/// @DnDAction : YoYo Games.Loops.Break
		/// @DnDVersion : 1
		/// @DnDHash : 54DEDD79
		/// @DnDComment : Break the loop and stop checking to$(13_10)the right of this object.
		/// @DnDParent : 60E32122
		break;
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7601519D
/// @DnDComment : If there were at least 2 other matching pieces$(13_10)horizontally...
/// @DnDArgument : "var" "_horizontal_matches"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "2"
if(_horizontal_matches >= 2)
{
	/// @DnDAction : YoYo Games.Common.Apply_To
	/// @DnDVersion : 1
	/// @DnDHash : 668AF919
	/// @DnDComment : Apply this following code to all instances of obj_matching_piece
	/// @DnDApplyTo : {obj_matching_piece}
	/// @DnDParent : 7601519D
	with(obj_matching_piece) {
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5AFCB937
		/// @DnDComment : For all pieces that are already in a matching horizontal$(13_10)line, execute the next piece of code.
		/// @DnDParent : 668AF919
		/// @DnDArgument : "var" "currently_matched"
		/// @DnDArgument : "op" "2"
		if(currently_matched > 0)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 05F9FD3A
			/// @DnDComment : Here we are setting currently_matched to 2 instead of 1,$(13_10)This is to confirm the piece was definitely part of a matching set,$(13_10)and should not be reset later in the code (you will see where this$(13_10)becomes relevant after we also check for matches in the vertical$(13_10)direction).
			/// @DnDParent : 5AFCB937
			/// @DnDArgument : "expr" "2"
			/// @DnDArgument : "var" "currently_matched"
			currently_matched = 2;
		}
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 0A1E8870
/// @DnDComment : If there weren't at least 2 matches horizontally,$(13_10)we'll need to stop telling any other tiles that$(13_10)they are currently matched.
else
{
	/// @DnDAction : YoYo Games.Common.Apply_To
	/// @DnDVersion : 1
	/// @DnDHash : 7A893D8F
	/// @DnDComment : Apply this following code to all instances of obj_matching_piece
	/// @DnDApplyTo : {obj_matching_piece}
	/// @DnDParent : 0A1E8870
	with(obj_matching_piece) {
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 157EE41E
		/// @DnDComment : Reset currently_matched to 0 because not enough$(13_10)tiles matched to create a full set of 3 or more.
		/// @DnDParent : 7A893D8F
		/// @DnDArgument : "var" "currently_matched"
		currently_matched = 0;
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 27881C95
/// @DnDComment : If this object had its value for currently_matched set to 0,$(13_10)we'll need to reset it because we want to check vertically.$(13_10)$(13_10)If it wasn't reset we leave it, since it will now be a "2"$(13_10)which means it will be cleared at the end of the turn.
/// @DnDArgument : "var" "currently_matched"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "1"
if(currently_matched < 1)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 154EE208
	/// @DnDComment : Reset the currently_matched variable for this piece to "1" - $(13_10)this effectively tells this piece that it has matched$(13_10)with itself, and will be used when calculating whether$(13_10)or not this piece was in a matching set at the end of this$(13_10)event.
	/// @DnDParent : 27881C95
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "currently_matched"
	currently_matched = 1;
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 462BD4C8
/// @DnDComment : Here we're resetting the temporary variable before we loop$(13_10)through adjacent squares checking how many of them in a row$(13_10)match the current square. This will be incremented and reset$(13_10)multiple times while we check for matches.
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "_square_to_check"
_square_to_check = 1;

/// @DnDAction : YoYo Games.Loops.Loop
/// @DnDVersion : 1
/// @DnDHash : 7ADCCF9D
/// @DnDComment : Start a loop to check all squares directly above the current object.
while(true)
{
	/// @DnDAction : YoYo Games.Collisions.If_Collision_Point
	/// @DnDVersion : 1
	/// @DnDHash : 14D7B79B
	/// @DnDComment : Check squares directly above the object$(13_10)for pieces. Notice that the y position$(13_10)to check is multiplied by _square_to_check$(13_10)which increments every time this loop$(13_10)runs successfully.$(13_10)$(13_10)If we find a piece we assign its id to$(13_10)a temporary variable called _piece_to_check.
	/// @DnDParent : 7ADCCF9D
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "_square_to_check*-100"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "target" "_piece_to_check"
	/// @DnDArgument : "target_temp" "1"
	/// @DnDArgument : "obj" "obj_matching_piece"
	/// @DnDSaveInfo : "obj" "obj_matching_piece"
	var l14D7B79B_0 = collision_point(x + 0, y + _square_to_check*-100, obj_matching_piece, true, 1);
	var _piece_to_check = l14D7B79B_0;
	if((l14D7B79B_0))
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 50CA59CD
		/// @DnDComment : Check if the image_index of the _piece_to_check$(13_10)is the same as this object's own image_index.$(13_10)$(13_10)i.e. Check if these two objects are matching pieces!
		/// @DnDParent : 14D7B79B
		/// @DnDArgument : "var" "_piece_to_check.image_index"
		/// @DnDArgument : "value" "image_index"
		if(_piece_to_check.image_index == image_index)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3D49B2A9
			/// @DnDComment : The piece we were checking matched the color of this one,$(13_10)so increase our counter for vertical matches.
			/// @DnDParent : 50CA59CD
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "_vertical_matches"
			_vertical_matches += 1;
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 02CE0F44
			/// @DnDComment : Here we check if the _piece_to_check is not already$(13_10)set to be currently_matched. If it's set to "2" it means$(13_10)it was already matched horizontally and must be destroyed$(13_10)at the end of this turn, so we don't want to downgrade it.$(13_10)$(13_10)However, if it's set to 0 we set it to 1 here to let the object$(13_10)know that it matched.
			/// @DnDParent : 50CA59CD
			/// @DnDArgument : "var" "_piece_to_check.currently_matched"
			/// @DnDArgument : "op" "1"
			/// @DnDArgument : "value" "1"
			if(_piece_to_check.currently_matched < 1)
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 41B973BF
				/// @DnDComment : Update the currently_matched variable of the other piece$(13_10)to let it know that it is part of a matching set.
				/// @DnDParent : 02CE0F44
				/// @DnDArgument : "expr" "1"
				/// @DnDArgument : "var" "_piece_to_check.currently_matched"
				_piece_to_check.currently_matched = 1;
			}
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5CB3B8A8
			/// @DnDComment : Increment the square to check so that when the loop$(13_10)next runs, it is checking for the next matching piece
			/// @DnDParent : 50CA59CD
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "_square_to_check"
			_square_to_check += 1;
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 59F32BD3
		/// @DnDComment : We hit a piece that doesn't match the current object, so$(13_10)stop checking in this direction.
		/// @DnDParent : 14D7B79B
		else
		{
			/// @DnDAction : YoYo Games.Loops.Break
			/// @DnDVersion : 1
			/// @DnDHash : 30CD46E5
			/// @DnDComment : Break the loop and stop checking$(13_10)above this object.
			/// @DnDParent : 59F32BD3
			break;
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 0E075599
	/// @DnDComment : If there wasn't another piece to the left of $(13_10)the current object.
	/// @DnDParent : 7ADCCF9D
	else
	{
		/// @DnDAction : YoYo Games.Loops.Break
		/// @DnDVersion : 1
		/// @DnDHash : 16F4BEF7
		/// @DnDComment : Break the loop and stop checking$(13_10)above this object.
		/// @DnDParent : 0E075599
		break;
	}
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 05C48645
/// @DnDComment : Here we're resetting the temporary variable before we loop$(13_10)through adjacent squares checking how many of them in a row$(13_10)match the current square. This will be incremented and reset$(13_10)multiple times while we check for matches.
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "_square_to_check"
_square_to_check = 1;

/// @DnDAction : YoYo Games.Loops.Loop
/// @DnDVersion : 1
/// @DnDHash : 09AD8061
/// @DnDComment : Start a loop to check all squares directly below the current object.
while(true)
{
	/// @DnDAction : YoYo Games.Collisions.If_Collision_Point
	/// @DnDVersion : 1
	/// @DnDHash : 20864E19
	/// @DnDComment : Check squares directly below the object$(13_10)for pieces. Notice that the y position$(13_10)to check is multiplied by _square_to_check$(13_10)which increments every time this loop$(13_10)runs successfully.$(13_10)$(13_10)If we find a piece we assign its id to$(13_10)a temporary variable called _piece_to_check.
	/// @DnDParent : 09AD8061
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "_square_to_check*100"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "target" "_piece_to_check"
	/// @DnDArgument : "target_temp" "1"
	/// @DnDArgument : "obj" "obj_matching_piece"
	/// @DnDSaveInfo : "obj" "obj_matching_piece"
	var l20864E19_0 = collision_point(x + 0, y + _square_to_check*100, obj_matching_piece, true, 1);
	var _piece_to_check = l20864E19_0;
	if((l20864E19_0))
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6483AE5D
		/// @DnDComment : Check if the image_index of the _piece_to_check$(13_10)is the same as this object's own image_index.$(13_10)$(13_10)i.e. Check if these two objects are matching pieces!
		/// @DnDParent : 20864E19
		/// @DnDArgument : "var" "_piece_to_check.image_index"
		/// @DnDArgument : "value" "image_index"
		if(_piece_to_check.image_index == image_index)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 29BE39A7
			/// @DnDComment : The piece we were checking matched the color of this one,$(13_10)so increase our counter for vertical matches.
			/// @DnDParent : 6483AE5D
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "_vertical_matches"
			_vertical_matches += 1;
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 61ED637F
			/// @DnDComment : Here we check if the _piece_to_check is not already$(13_10)set to be currently_matched. If it's set to "2" it means$(13_10)it was already matched horizontally and must be destroyed$(13_10)at the end of this turn, so we don't want to downgrade it.$(13_10)$(13_10)However, if it's set to 0 we set it to 1 here to let the object$(13_10)know that it matched.
			/// @DnDParent : 6483AE5D
			/// @DnDArgument : "var" "_piece_to_check.currently_matched"
			/// @DnDArgument : "op" "1"
			/// @DnDArgument : "value" "1"
			if(_piece_to_check.currently_matched < 1)
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 5F630BF6
				/// @DnDComment : Update the currently_matched variable of the other piece$(13_10)to let it know that it is part of a matching set.
				/// @DnDParent : 61ED637F
				/// @DnDArgument : "expr" "1"
				/// @DnDArgument : "var" "_piece_to_check.currently_matched"
				_piece_to_check.currently_matched = 1;
			}
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7FB53513
			/// @DnDComment : Increment the square to check so that when the loop$(13_10)next runs, it is checking for the next matching piece
			/// @DnDParent : 6483AE5D
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "_square_to_check"
			_square_to_check += 1;
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 43C5A111
		/// @DnDComment : We hit a piece that doesn't match the current object, so$(13_10)stop checking in this direction.
		/// @DnDParent : 20864E19
		else
		{
			/// @DnDAction : YoYo Games.Loops.Break
			/// @DnDVersion : 1
			/// @DnDHash : 784ED7B3
			/// @DnDComment : Break the loop and stop checking$(13_10)below this object.
			/// @DnDParent : 43C5A111
			break;
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 21DCFC1A
	/// @DnDComment : If there wasn't another piece to the left of $(13_10)the current object.
	/// @DnDParent : 09AD8061
	else
	{
		/// @DnDAction : YoYo Games.Loops.Break
		/// @DnDVersion : 1
		/// @DnDHash : 3E7177F2
		/// @DnDComment : Break the loop and stop checking$(13_10)below this object.
		/// @DnDParent : 21DCFC1A
		break;
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5A31D88E
/// @DnDComment : If there were at least 2 other matching pieces$(13_10)vertically...
/// @DnDArgument : "var" "_vertical_matches"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "2"
if(_vertical_matches >= 2)
{
	/// @DnDAction : YoYo Games.Common.Apply_To
	/// @DnDVersion : 1
	/// @DnDHash : 3DA080C3
	/// @DnDComment : Apply this following code to all instances of obj_matching_piece
	/// @DnDApplyTo : {obj_matching_piece}
	/// @DnDParent : 5A31D88E
	with(obj_matching_piece) {
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3E638750
		/// @DnDComment : For all pieces that are already in a matching horizontal$(13_10)line, execute the next piece of code.
		/// @DnDParent : 3DA080C3
		/// @DnDArgument : "var" "currently_matched"
		/// @DnDArgument : "op" "2"
		if(currently_matched > 0)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 1E08F215
			/// @DnDComment : Here we are setting currently_matched to 2 instead of 1,$(13_10)This is to confirm the piece was definitely part of a matching set,$(13_10)and should not be reset later in the code (you will see where this$(13_10)becomes relevant later).
			/// @DnDParent : 3E638750
			/// @DnDArgument : "expr" "2"
			/// @DnDArgument : "var" "currently_matched"
			currently_matched = 2;
		}
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 0B789570
/// @DnDComment : If there weren't at least 2 matches vertically,$(13_10)we'll need to stop telling any other tiles that$(13_10)they are currently matched.
else
{
	/// @DnDAction : YoYo Games.Common.Apply_To
	/// @DnDVersion : 1
	/// @DnDHash : 433C2506
	/// @DnDComment : Apply this following code to all instances of obj_matching_piece
	/// @DnDApplyTo : {obj_matching_piece}
	/// @DnDParent : 0B789570
	with(obj_matching_piece) {
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3DC28C5D
		/// @DnDComment : This is where setting "currently_matched" to 2 earlier in the$(13_10)event becomes important.$(13_10)$(13_10)If the piece is NOT part of a matching set, we are about$(13_10)to reset this value to 0 in the next action.
		/// @DnDParent : 433C2506
		/// @DnDArgument : "var" "currently_matched"
		/// @DnDArgument : "op" "1"
		/// @DnDArgument : "value" "2"
		if(currently_matched < 2)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 441EBD6F
			/// @DnDComment : Reset currently_matched to 0 because not enough$(13_10)tiles matched to create a full set of 3 or more.
			/// @DnDParent : 3DC28C5D
			/// @DnDArgument : "var" "currently_matched"
			currently_matched = 0;
		}
	}
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 615BAAAB
/// @DnDComment : This expression checks whether either a horizontal or vertical match$(13_10)was found. >= means "greater than or equal to" and || means "or".$(13_10)$(13_10)We're using an expression here because it makes more sense than checking$(13_10)each variable individually in separated "if-else" checks.
/// @DnDArgument : "expr" "_horizontal_matches >= 2 || _vertical_matches >= 2"
if(_horizontal_matches >= 2 || _vertical_matches >= 2)
{
	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 6413136F
	/// @DnDComment : We found a match, so increase the global variable score_combo$(13_10)to reflect this.
	/// @DnDParent : 615BAAAB
	/// @DnDArgument : "value" "1"
	/// @DnDArgument : "value_relative" "1"
	/// @DnDArgument : "var" "score_combo"
	global.score_combo += 1;

	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 20FA5656
	/// @DnDComment : Set the global variable global.matched_this_turn to 1 to let$(13_10)all other objects know that we are processing a match.
	/// @DnDParent : 615BAAAB
	/// @DnDArgument : "value" "1"
	/// @DnDArgument : "var" "matched_this_turn"
	global.matched_this_turn = 1;

	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 36D013E3
	/// @DnDComment : Make sure global.can_swap is set to 0, since we need to process$(13_10)the animation for finding a match.
	/// @DnDParent : 615BAAAB
	/// @DnDArgument : "var" "global.can_swap"
	global.can_swap = 0;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 03065A5E
	/// @DnDComment : If this object's fell_this_turn variable is set to 0,$(13_10)i.e. it moved this turn because the player swapped it,$(13_10)perform the next action.
	/// @DnDParent : 615BAAAB
	/// @DnDArgument : "var" "fell_this_turn"
	if(fell_this_turn == 0)
	{
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 6E38DE1E
		/// @DnDComment : Call the function text_pop_up()$(13_10)which creates and instance of the object$(13_10)obj_text_popup and gives it some text$(13_10)to show on the screen: In this case$(13_10)the number of matches the player has $(13_10)made in a row.
		/// @DnDInput : 3
		/// @DnDParent : 03065A5E
		/// @DnDArgument : "function" "text_pop_up"
		/// @DnDArgument : "arg" "x+50"
		/// @DnDArgument : "arg_1" "y+50"
		/// @DnDArgument : "arg_2" "string(global.score_combo)+"x Match""
		text_pop_up(x+50, y+50, string(global.score_combo)+"x Match");
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1.1
		/// @DnDHash : 5AD70169
		/// @DnDComment : Play a sound effect to indicate a match has taken place.
		/// @DnDParent : 03065A5E
		/// @DnDArgument : "soundid" "snd_match_small"
		/// @DnDSaveInfo : "soundid" "snd_match_small"
		audio_play_sound(snd_match_small, 0, 0, 1.0, undefined, 1.0);
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 259C2002
	/// @DnDComment : fell_this_turn was 1, so execute the next action
	/// @DnDParent : 615BAAAB
	else
	{
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 36968692
		/// @DnDComment : Call the function text_pop_up()$(13_10)which creates and instance of the object$(13_10)obj_text_popup and gives it some text$(13_10)to show on the screen: In this case$(13_10)the number of chains that were automatically$(13_10)made in a row.
		/// @DnDInput : 3
		/// @DnDParent : 259C2002
		/// @DnDArgument : "function" "text_pop_up"
		/// @DnDArgument : "arg" "x+50"
		/// @DnDArgument : "arg_1" "y+50"
		/// @DnDArgument : "arg_2" "string(global.score_combo)+"x Chain""
		text_pop_up(x+50, y+50, string(global.score_combo)+"x Chain");
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1.1
		/// @DnDHash : 06486199
		/// @DnDComment : Play a sound effect to indicate a chained match has taken place.
		/// @DnDParent : 259C2002
		/// @DnDArgument : "soundid" "snd_match_big"
		/// @DnDSaveInfo : "soundid" "snd_match_big"
		audio_play_sound(snd_match_big, 0, 0, 1.0, undefined, 1.0);
	}

	/// @DnDAction : YoYo Games.Common.Apply_To
	/// @DnDVersion : 1
	/// @DnDHash : 35437B06
	/// @DnDComment : The following code applies to obj_controller
	/// @DnDApplyTo : {obj_controller}
	/// @DnDParent : 615BAAAB
	with(obj_controller) {
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3DF4E6C4
		/// @DnDComment : When obj_controller triggered this event to check for combos,$(13_10)we need to tell it not to reset the current turn because$(13_10)there is another match to process.
		/// @DnDParent : 35437B06
		/// @DnDArgument : "var" "reset_turn"
		reset_turn = 0;
	
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 40063D06
		/// @DnDComment : Here we set an alarm to tell the controller object that some pieces$(13_10)were destroyed. This will trigger Alarm 0 in obj_controller in 15$(13_10)frames time.$(13_10)$(13_10)This value will need to change from 15 if the animation for clearing$(13_10)pieces takes longer than 15 frames.
		/// @DnDParent : 35437B06
		/// @DnDArgument : "steps" "15"
		alarm_set(0, 15);
	}

	/// @DnDAction : YoYo Games.Common.Apply_To
	/// @DnDVersion : 1
	/// @DnDHash : 5936CCBD
	/// @DnDComment : Apply this following code to all instances of obj_matching_piece
	/// @DnDApplyTo : {obj_matching_piece}
	/// @DnDParent : 615BAAAB
	with(obj_matching_piece) {
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3D7DE112
		/// @DnDComment : If any piece in the current row or column was part of a matching set,$(13_10)we have already set its currently_matched variable to 2 earlier in $(13_10)this event.$(13_10)$(13_10)Therefore we can now clear those pieces from the board.
		/// @DnDParent : 5936CCBD
		/// @DnDArgument : "var" "currently_matched"
		/// @DnDArgument : "op" "4"
		/// @DnDArgument : "value" "2"
		if(currently_matched >= 2)
		{
			/// @DnDAction : YoYo Games.Common.Set_Global
			/// @DnDVersion : 1
			/// @DnDHash : 163F5E8F
			/// @DnDComment : For each matching piece, increase the player's score$(13_10)by 50 points multiplied by the current value of$(13_10)the global variable score_combo.
			/// @DnDParent : 3D7DE112
			/// @DnDArgument : "value" "global.score_combo*50"
			/// @DnDArgument : "value_relative" "1"
			/// @DnDArgument : "var" "score_total"
			global.score_total += global.score_combo*50;
		
			/// @DnDAction : YoYo Games.Common.Function_Call
			/// @DnDVersion : 1
			/// @DnDHash : 6BA754D1
			/// @DnDParent : 3D7DE112
			/// @DnDArgument : "function" "objective_solve"
			/// @DnDArgument : "arg" "image_index"
			objective_solve(image_index);
		
			/// @DnDAction : YoYo Games.Instances.Destroy_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 1A1A632E
			/// @DnDComment : Clear the matched pieces from the board.
			/// @DnDParent : 3D7DE112
			instance_destroy();
		}
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 1D2FB88B
/// @DnDComment : There were no matches for this piece.
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5FB44C56
	/// @DnDComment : If this event is running because the piece fell this turn,$(13_10)run the following block of code.
	/// @DnDParent : 1D2FB88B
	/// @DnDArgument : "var" "fell_this_turn"
	/// @DnDArgument : "value" "1"
	if(fell_this_turn == 1)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 17EB363E
		/// @DnDComment : The piece didn't match anything, so set fell_this_turn $(13_10)back to 0 and do nothing else.
		/// @DnDParent : 5FB44C56
		/// @DnDArgument : "var" "fell_this_turn"
		fell_this_turn = 0;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 222FD4D6
	/// @DnDComment : If fell_this_turn was 0, this event was triggered by the player$(13_10)moving a piece. Run the following block of code.
	/// @DnDParent : 1D2FB88B
	else
	{
		/// @DnDAction : YoYo Games.Common.Apply_To
		/// @DnDVersion : 1
		/// @DnDHash : 477EF270
		/// @DnDComment : Apply the following code to obj_controller
		/// @DnDApplyTo : {obj_controller}
		/// @DnDParent : 222FD4D6
		with(obj_controller) {
			/// @DnDAction : YoYo Games.Instances.Set_Alarm
			/// @DnDVersion : 1
			/// @DnDHash : 70A30D7A
			/// @DnDComment : Set alarm[2] to just 2 frames. This gives other pieces time$(13_10)to process. alarm[2] of obj_controller checks whether or not$(13_10)this was a valid move and if not, it will swap the pieces$(13_10)back. If it was a valid move alarm[2] will do nothing and$(13_10)the match will be processed as normal.
			/// @DnDParent : 477EF270
			/// @DnDArgument : "steps" "2"
			/// @DnDArgument : "alarm" "2"
			alarm_set(2, 2);
		}
	}
}