/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 17E3900B
/// @DnDComment : If obj_game_over_win exists...
/// @DnDArgument : "obj" "obj_game_over_win"
/// @DnDSaveInfo : "obj" "obj_game_over_win"
var l17E3900B_0 = false;
l17E3900B_0 = instance_exists(obj_game_over_win);
if(l17E3900B_0)
{
	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 1832FCF8
	/// @DnDComment : Then exit this event, preventing the creation of new peices.
	/// @DnDParent : 17E3900B
	exit;
}

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 67C13B55
/// @DnDComment : This event is triggered from User Event 0 of obj_matching piece. It tells the controller$(13_10)to reset the board after pieces have been matched.$(13_10)$(13_10)The following code is applied back to all instances of obj_matching_piece, so$(13_10)they can detect whether or not they should fall into empty spaces lower on the$(13_10)board.
/// @DnDApplyTo : {obj_matching_piece}
with(obj_matching_piece) {
	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2EE2AF6A
	/// @DnDComment : Set up a temporary variable to keep$(13_10)track of which squares we will check$(13_10)when resetting the board. This will be$(13_10)incremented in the loop below.
	/// @DnDParent : 67C13B55
	/// @DnDArgument : "var" "_square_to_check"
	/// @DnDArgument : "value" "1"
	var _square_to_check = 1;

	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0237D319
	/// @DnDComment : Set up a temporary variable to keep$(13_10)track of the largest height from which$(13_10)any piece will fall. We pass this information$(13_10)into an alarm later to allow time for the$(13_10)falling animation to happen.
	/// @DnDParent : 67C13B55
	/// @DnDArgument : "var" "_fall_time"
	/// @DnDArgument : "value" "0"
	var _fall_time = 0;

	/// @DnDAction : YoYo Games.Loops.Loop
	/// @DnDVersion : 1
	/// @DnDHash : 535AFC7F
	/// @DnDComment : Start a loop to check for empty spaces$(13_10)below each piece on the board.
	/// @DnDParent : 67C13B55
	while(true)
	{
		/// @DnDAction : YoYo Games.Collisions.If_Collision_Point
		/// @DnDVersion : 1
		/// @DnDHash : 35B4D730
		/// @DnDComment : If there is a play field square below the current piece...
		/// @DnDParent : 535AFC7F
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "_square_to_check*100"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "obj" "obj_playfield_parent"
		/// @DnDSaveInfo : "obj" "obj_playfield_parent"
		var l35B4D730_0 = collision_point(x + 0, y + _square_to_check*100, obj_playfield_parent, true, 1);
		if((l35B4D730_0))
		{
			/// @DnDAction : YoYo Games.Collisions.If_Collision_Point
			/// @DnDVersion : 1
			/// @DnDHash : 67955803
			/// @DnDComment : If there is NOT an instance of obj_matching_piece$(13_10)in the play field square being checked it must be$(13_10)empty, so this piece can fall into it.
			/// @DnDParent : 35B4D730
			/// @DnDArgument : "x_relative" "1"
			/// @DnDArgument : "y" "_square_to_check*100"
			/// @DnDArgument : "y_relative" "1"
			/// @DnDArgument : "obj" "obj_matching_piece"
			/// @DnDArgument : "not" "1"
			/// @DnDSaveInfo : "obj" "obj_matching_piece"
			var l67955803_0 = collision_point(x + 0, y + _square_to_check*100, obj_matching_piece, true, 1);
			if(!(l67955803_0))
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 5764B081
				/// @DnDComment : Increment target_y by 100, this will make$(13_10)this piece fall one square below its current$(13_10)position since y gradually approaches target_y$(13_10)in the step event
				/// @DnDParent : 67955803
				/// @DnDArgument : "expr" "100"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "target_y"
				target_y += 100;
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 521164BA
				/// @DnDComment : Update the fell_this_turn variable so that$(13_10)the piece knows to check for matches once all$(13_10)other pieces have fallen into place
				/// @DnDParent : 67955803
				/// @DnDArgument : "expr" "1"
				/// @DnDArgument : "var" "fell_this_turn"
				fell_this_turn = 1;
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 1E6822B4
				/// @DnDComment : Increment the _fall_time variable. You will need$(13_10)to change this value if you have changed how fast$(13_10)pieces fall in the step event of obj_matching_piece.
				/// @DnDParent : 67955803
				/// @DnDArgument : "expr" "10"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "_fall_time"
				_fall_time += 10;
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 50EE9723
				/// @DnDComment : Increment the _square_to_check variable so that$(13_10)the loop will continue to check the next empty square
				/// @DnDParent : 67955803
				/// @DnDArgument : "expr" "1"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "_square_to_check"
				_square_to_check += 1;
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 5BCA82BA
			/// @DnDComment : The play field square below this piece was not empty.
			/// @DnDParent : 35B4D730
			else
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 444636C8
				/// @DnDComment : Increment the _square_to_check variable so that$(13_10)the loop will continue to check the next empty square.
				/// @DnDParent : 5BCA82BA
				/// @DnDArgument : "expr" "1"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "_square_to_check"
				_square_to_check += 1;
			}
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 7D7BCF48
		/// @DnDComment : There was not another play field square below this piece.
		/// @DnDParent : 535AFC7F
		else
		{
			/// @DnDAction : YoYo Games.Loops.Break
			/// @DnDVersion : 1
			/// @DnDHash : 7E138642
			/// @DnDComment : Break the current loop.
			/// @DnDParent : 7D7BCF48
			break;
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 142E572B
	/// @DnDComment : If alarm[1] in obj_controller is lower than the$(13_10)current time it will take to animated falling objects...
	/// @DnDParent : 67C13B55
	/// @DnDArgument : "var" "obj_controller.alarm[1]"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "_fall_time+5"
	if(obj_controller.alarm[1] < _fall_time+5)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0F5A19CE
		/// @DnDComment : Set alarm[1] in obj_controller to match the time it $(13_10)will take to animate falling objects.
		/// @DnDParent : 142E572B
		/// @DnDArgument : "expr" "_fall_time+5"
		/// @DnDArgument : "var" "obj_controller.alarm[1]"
		obj_controller.alarm[1] = _fall_time+5;
	}
}

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 699D0382
/// @DnDComment : The following code is applied to play field squares, to check whether$(13_10)there will be empty spaces in each column on any given turn so that$(13_10)they can be filled with new blocks.
/// @DnDApplyTo : {obj_playfield_parent}
with(obj_playfield_parent) {
	/// @DnDAction : YoYo Games.Collisions.If_Collision_Point
	/// @DnDVersion : 1
	/// @DnDHash : 2743712C
	/// @DnDComment : $(13_10)If there is not another instance of obj_playfield_parent$(13_10)above this one, then it must be the "top" square in each$(13_10)column, so it should be the one to check the whole column$(13_10)for empty squares.
	/// @DnDParent : 699D0382
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "-100"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "obj" "obj_playfield_parent"
	/// @DnDArgument : "not" "1"
	/// @DnDSaveInfo : "obj" "obj_playfield_parent"
	var l2743712C_0 = collision_point(x + 0, y + -100, obj_playfield_parent, true, 1);
	if(!(l2743712C_0))
	{
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6D39426E
		/// @DnDComment : Create a temporary variable called _square_to_check which$(13_10)we will increment to check all squares in the column.
		/// @DnDParent : 2743712C
		/// @DnDArgument : "var" "_square_to_check"
		/// @DnDArgument : "value" "0"
		var _square_to_check = 0;
	
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3C0438D3
		/// @DnDComment : Declare a temporary variable to keep track of how$(13_10)many empty squares there are in this column
		/// @DnDParent : 2743712C
		/// @DnDArgument : "var" "_empty_squares"
		/// @DnDArgument : "value" "0"
		var _empty_squares = 0;
	
		/// @DnDAction : YoYo Games.Loops.Loop
		/// @DnDVersion : 1
		/// @DnDHash : 383DCF47
		/// @DnDComment : Begin a loop to check for empty squares.
		/// @DnDParent : 2743712C
		while(true)
		{
			/// @DnDAction : YoYo Games.Collisions.If_Collision_Point
			/// @DnDVersion : 1
			/// @DnDHash : 053C9BD3
			/// @DnDComment : Check if there is a play field square where$(13_10)we are currently looking.$(13_10)$(13_10)Note we are multiplying 100 (the size of the squares)$(13_10)by _square_to_check.$(13_10)$(13_10)We start at 0 and do not select "Exclude Self"$(13_10)for this check since we want to check if the$(13_10)top square itself is empty.
			/// @DnDParent : 383DCF47
			/// @DnDArgument : "x_relative" "1"
			/// @DnDArgument : "y" "_square_to_check*100"
			/// @DnDArgument : "y_relative" "1"
			/// @DnDArgument : "obj" "obj_playfield_parent"
			/// @DnDArgument : "notme" "0"
			/// @DnDSaveInfo : "obj" "obj_playfield_parent"
			var l053C9BD3_0 = collision_point(x + 0, y + _square_to_check*100, obj_playfield_parent, true, 0);
			if((l053C9BD3_0))
			{
				/// @DnDAction : YoYo Games.Collisions.If_Collision_Point
				/// @DnDVersion : 1
				/// @DnDHash : 2F75035D
				/// @DnDComment : Check if the playfield square is empty,$(13_10)and if it is we increment the _empty_squares$(13_10)variable.
				/// @DnDParent : 053C9BD3
				/// @DnDArgument : "x_relative" "1"
				/// @DnDArgument : "y" "_square_to_check*100"
				/// @DnDArgument : "y_relative" "1"
				/// @DnDArgument : "obj" "obj_matching_piece"
				/// @DnDArgument : "not" "1"
				/// @DnDSaveInfo : "obj" "obj_matching_piece"
				var l2F75035D_0 = collision_point(x + 0, y + _square_to_check*100, obj_matching_piece, true, 1);
				if(!(l2F75035D_0))
				{
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 11CF8F54
					/// @DnDComment : Increment the number of empty squares$(13_10)we found.
					/// @DnDParent : 2F75035D
					/// @DnDArgument : "expr" "1"
					/// @DnDArgument : "expr_relative" "1"
					/// @DnDArgument : "var" "_empty_squares"
					_empty_squares += 1;
				}
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 6AC6487D
				/// @DnDComment : Increment the square to check and $(13_10)continue the loop.
				/// @DnDParent : 053C9BD3
				/// @DnDArgument : "expr" "1"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "_square_to_check"
				_square_to_check += 1;
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 0CD3E525
			/// @DnDComment : There was not a play field square, so we can stop checking as we have$(13_10)reached the bottom of this column
			/// @DnDParent : 383DCF47
			else
			{
				/// @DnDAction : YoYo Games.Loops.Break
				/// @DnDVersion : 1
				/// @DnDHash : 2E6EE028
				/// @DnDComment : Break the loop
				/// @DnDParent : 0CD3E525
				break;
			}
		}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7D267143
		/// @DnDComment : After the loop finishes, we check if there$(13_10)were any empty squares in this column. If$(13_10)there were, we execute the following piece of code.
		/// @DnDParent : 2743712C
		/// @DnDArgument : "var" "_empty_squares"
		/// @DnDArgument : "op" "2"
		if(_empty_squares > 0)
		{
			/// @DnDAction : YoYo Games.Loops.For_Loop
			/// @DnDVersion : 1
			/// @DnDHash : 34500032
			/// @DnDComment : Here we set up a new loop called a "for loop". This will allow$(13_10)us to easily create one piece for each empty square in this column$(13_10)and tell it to fall into the right place.$(13_10)$(13_10)i = 1 sets a value we can increment as we create each piece.$(13_10)$(13_10)i <= _empty_squares means the loop will stop automatically when i reaches $(13_10)the number of empty squares in the column$(13_10)$(13_10)i += 1 will increment i every time this loop runs
			/// @DnDParent : 7D267143
			/// @DnDArgument : "init" "i = 1"
			/// @DnDArgument : "init_temp" "1"
			/// @DnDArgument : "cond" "i <= _empty_squares"
			for(var i = 1; i <= _empty_squares; i += 1) {
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 12A0F688
				/// @DnDComment : Create a new instance$(13_10)of obj_matching_piece$(13_10)above this column.$(13_10)$(13_10)Notice we multiply i, the current iteration of this loop, by -100, the size of the $(13_10)grid squares.$(13_10)$(13_10)We assign the id of the new piece to the temporary variable _new_piece.
				/// @DnDParent : 34500032
				/// @DnDArgument : "xpos_relative" "1"
				/// @DnDArgument : "ypos" "i*-100"
				/// @DnDArgument : "ypos_relative" "1"
				/// @DnDArgument : "var" "_new_piece"
				/// @DnDArgument : "var_temp" "1"
				/// @DnDArgument : "objectid" "obj_matching_piece"
				/// @DnDArgument : "layer" ""Pieces""
				/// @DnDSaveInfo : "objectid" "obj_matching_piece"
				var _new_piece = instance_create_layer(x + 0, y + i*-100, "Pieces", obj_matching_piece);
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 57B573B0
				/// @DnDComment : Here we set the target_y of the new piece to make it fall$(13_10)into the right square.$(13_10)$(13_10)The formula looks complicated, but it makes sure that the piece$(13_10)that spawns closest to the top of the current column falls$(13_10)the farthest and settles at the lowest empty square of the$(13_10)column.
				/// @DnDParent : 34500032
				/// @DnDArgument : "expr" "y+(100*_empty_squares)-(i*100)"
				/// @DnDArgument : "var" "_new_piece.target_y"
				_new_piece.target_y = y+(100*_empty_squares)-(i*100);
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 01CBFF06
				/// @DnDComment : $(13_10)Update the fell_this_turn variable so that$(13_10)the new piece knows to check for matches once all$(13_10)other pieces have fallen into place
				/// @DnDParent : 34500032
				/// @DnDArgument : "expr" "1"
				/// @DnDArgument : "var" "_new_piece.fell_this_turn"
				_new_piece.fell_this_turn = 1;
			}
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 21B21479
			/// @DnDComment : When pieces need to fall into place on the board, we will$(13_10)need to stall the player from taking more turns until the$(13_10)board has fully reset.$(13_10)$(13_10)We check if alarm[1] for obj_controller is set too low,$(13_10)and if so we will set the alarm to a higher value.$(13_10)$(13_10)NOTE: If you change the speed at which pieces fall in the step$(13_10)event of obj_matching_piece, you would need to change the value here too.
			/// @DnDParent : 7D267143
			/// @DnDArgument : "var" "obj_controller.alarm[1]"
			/// @DnDArgument : "op" "1"
			/// @DnDArgument : "value" "(_empty_squares*10)+5"
			if(obj_controller.alarm[1] < (_empty_squares*10)+5)
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 57FE7DCC
				/// @DnDComment : NOTE: If you change the speed at which pieces fall in the step$(13_10)event of obj_matching_piece, you would need to change the value here too.
				/// @DnDParent : 21B21479
				/// @DnDArgument : "expr" "(_empty_squares*10)+5"
				/// @DnDArgument : "var" "obj_controller.alarm[1]"
				obj_controller.alarm[1] = (_empty_squares*10)+5;
			}
		}
	}
}