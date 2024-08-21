/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 05FA0D4A
/// @DnDComment : If view width is over view height then we are in landscape...
/// @DnDArgument : "expr" "camera_get_view_width(view_camera[0]) > camera_get_view_height(view_camera[0])"
if(camera_get_view_width(view_camera[0]) > camera_get_view_height(view_camera[0]))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5CB47F85
	/// @DnDComment : This object is visible.
	/// @DnDParent : 05FA0D4A
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "visible"
	visible = true;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 64734A89
/// @DnDComment : Else we are in portrait...
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4E40AAA1
	/// @DnDComment : This object is invisible.
	/// @DnDParent : 64734A89
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "visible"
	visible = false;

	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 2E7AABCF
	/// @DnDComment : Exit the event because we don't want to execute the folowing actions in portrait.
	/// @DnDParent : 64734A89
	exit;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3287F4FB
/// @DnDComment : If the player has reached the first star on the score bar$(13_10)(by getting one fifth of the score target)...
/// @DnDArgument : "var" "global.score_total"
/// @DnDArgument : "op" "2"
if(global.score_total > 0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 16E3A9D1
	/// @DnDComment : If we haven't yet created the instance which animates this $(13_10)star on the HUD...
	/// @DnDParent : 3287F4FB
	/// @DnDArgument : "var" "star_done[0]"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "1"
	if(star_done[0] < 1)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 4E0ABAD7
		/// @DnDComment : Create an instance of the object obj_effect_star$(13_10)at the correct place on the HUD and assign its $(13_10)id to the temporary variable _this_star.
		/// @DnDParent : 16E3A9D1
		/// @DnDArgument : "xpos" "100"
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos" "660"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "var" "_this_star"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "objectid" "obj_effect_star"
		/// @DnDArgument : "layer" ""UIElements2""
		/// @DnDSaveInfo : "objectid" "obj_effect_star"
		var _this_star = instance_create_layer(x + 100, y + 660, "UIElements2", obj_effect_star);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0FF90FD7
		/// @DnDComment : Tell the newly created star that it is star number "0"$(13_10)by assigning its my_star_number variable a value of 0.
		/// @DnDParent : 16E3A9D1
		/// @DnDArgument : "var" "_this_star.my_star_number"
		_this_star.my_star_number = 0;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5B66D3D0
		/// @DnDComment : Set star_done[0] to 1 so that we don't create more$(13_10)than 1 star effect object.
		/// @DnDParent : 16E3A9D1
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "star_done[0]"
		star_done[0] = 1;
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4EC58495
/// @DnDComment : If the player has reached the second star on the score bar$(13_10)(by getting half of the score target)...
/// @DnDArgument : "var" "global.score_total"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "global.score_target * 0.4"
if(global.score_total >= global.score_target * 0.4)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6DDCC0DF
	/// @DnDComment : If we haven't yet created the instance which animates this $(13_10)star on the HUD...
	/// @DnDParent : 4EC58495
	/// @DnDArgument : "var" "star_done[1]"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "1"
	if(star_done[1] < 1)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 5CFAEEB4
		/// @DnDComment : Create an instance of the object obj_effect_star$(13_10)at the correct place on the HUD and assign its $(13_10)id to the temporary variable _this_star.
		/// @DnDParent : 6DDCC0DF
		/// @DnDArgument : "xpos" "100"
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos" " 460"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "var" "_this_star"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "objectid" "obj_effect_star"
		/// @DnDArgument : "layer" ""UIElements2""
		/// @DnDSaveInfo : "objectid" "obj_effect_star"
		var _this_star = instance_create_layer(x + 100, y +  460, "UIElements2", obj_effect_star);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 64D0D87B
		/// @DnDComment : Tell the newly created star that it is star number "1"$(13_10)by assigning its my_star_number variable a value of 1.
		/// @DnDParent : 6DDCC0DF
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "_this_star.my_star_number"
		_this_star.my_star_number = 1;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6840B59E
		/// @DnDComment : Set star_done[1] to 1 so that we don't create more$(13_10)than 1 star effect object.
		/// @DnDParent : 6DDCC0DF
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "star_done[1]"
		star_done[1] = 1;
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 34F38CCC
/// @DnDComment : If the player has reached the third star on the score bar$(13_10)(by getting the score target)...
/// @DnDArgument : "var" "global.score_total"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "global.score_target"
if(global.score_total >= global.score_target)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 678E8903
	/// @DnDComment : If we haven't yet created the instance which animates this $(13_10)star on the HUD...
	/// @DnDParent : 34F38CCC
	/// @DnDArgument : "var" "star_done[2]"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "1"
	if(star_done[2] < 1)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 477DBF53
		/// @DnDComment : Create an instance of the object obj_effect_star$(13_10)at the correct place on the HUD and assign its $(13_10)id to the temporary variable _this_star.
		/// @DnDParent : 678E8903
		/// @DnDArgument : "xpos" "100"
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos" "160"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "var" "_this_star"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "objectid" "obj_effect_star"
		/// @DnDArgument : "layer" ""UIElements2""
		/// @DnDSaveInfo : "objectid" "obj_effect_star"
		var _this_star = instance_create_layer(x + 100, y + 160, "UIElements2", obj_effect_star);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4592C0B2
		/// @DnDComment : Tell the newly created star that it is star number "2"$(13_10)by assigning its my_star_number variable a value of 2.
		/// @DnDParent : 678E8903
		/// @DnDArgument : "expr" "2"
		/// @DnDArgument : "var" "_this_star.my_star_number"
		_this_star.my_star_number = 2;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2FFF7941
		/// @DnDComment : Set star_done[2] to 1 so that we don't create more$(13_10)than 1 star effect object.
		/// @DnDParent : 678E8903
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "star_done[2]"
		star_done[2] = 1;
	}
}