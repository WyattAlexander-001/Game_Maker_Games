/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 6B877B74
/// @DnDComment : If view width is over view height, then we are in landscape...
/// @DnDArgument : "expr" "camera_get_view_width(view_camera[0]) > camera_get_view_height(view_camera[0])"
if(camera_get_view_width(view_camera[0]) > camera_get_view_height(view_camera[0]))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5157E682
	/// @DnDComment : This object is invisible.
	/// @DnDParent : 6B877B74
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "visible"
	visible = false;

	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 33358079
	/// @DnDComment : Exit this event as we don't want to execute it's actions in landscape.
	/// @DnDParent : 6B877B74
	exit;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 1DB2DD60
/// @DnDComment : We are in portrait.
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 723C38E6
	/// @DnDComment : This object is visible.
	/// @DnDParent : 1DB2DD60
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "visible"
	visible = true;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2793A909
/// @DnDComment : If the player has reached the first star on the score bar$(13_10)(by getting one fifth of the score target)...
/// @DnDArgument : "var" "global.score_total"
/// @DnDArgument : "op" "2"
if(global.score_total > 0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6A9F96DC
	/// @DnDComment : If we haven't yet created the instance which animates this $(13_10)star on the HUD...
	/// @DnDParent : 2793A909
	/// @DnDArgument : "var" "obj_score.star_done[0]"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "1"
	if(obj_score.star_done[0] < 1)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 5C633BAD
		/// @DnDComment : Create an instance of the object obj_effect_star$(13_10)at the correct place on the HUD and assign its $(13_10)id to the temporary variable _this_star.
		/// @DnDParent : 6A9F96DC
		/// @DnDArgument : "xpos" "170"
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos" "75"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "var" "_this_star"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "objectid" "obj_effect_star"
		/// @DnDArgument : "layer" ""UIElements2""
		/// @DnDSaveInfo : "objectid" "obj_effect_star"
		var _this_star = instance_create_layer(x + 170, y + 75, "UIElements2", obj_effect_star);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 40D6A80E
		/// @DnDComment : Tell the newly created star that it is star number "0"$(13_10)by assigning its my_star_number variable a value of 0.
		/// @DnDParent : 6A9F96DC
		/// @DnDArgument : "var" "_this_star.my_star_number"
		_this_star.my_star_number = 0;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1DF35D1B
		/// @DnDComment : Set star_done[0] to 1 so that we don't create more$(13_10)than 1 star effect object.
		/// @DnDParent : 6A9F96DC
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "obj_score.star_done[0]"
		obj_score.star_done[0] = 1;
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1050684B
/// @DnDComment : If the player has reached the second star on the score bar$(13_10)(by getting half of the score target)...
/// @DnDArgument : "var" "global.score_total"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "global.score_target * 0.4"
if(global.score_total >= global.score_target * 0.4)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7FF563C2
	/// @DnDComment : If we haven't yet created the instance which animates this $(13_10)star on the HUD...
	/// @DnDParent : 1050684B
	/// @DnDArgument : "var" "obj_score.star_done[1]"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "1"
	if(obj_score.star_done[1] < 1)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 6CE80813
		/// @DnDComment : Create an instance of the object obj_effect_star$(13_10)at the correct place on the HUD and assign its $(13_10)id to the temporary variable _this_star.
		/// @DnDParent : 7FF563C2
		/// @DnDArgument : "xpos" "400"
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos" "75"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "var" "_this_star"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "objectid" "obj_effect_star"
		/// @DnDArgument : "layer" ""UIElements2""
		/// @DnDSaveInfo : "objectid" "obj_effect_star"
		var _this_star = instance_create_layer(x + 400, y + 75, "UIElements2", obj_effect_star);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 27FF1A75
		/// @DnDComment : Tell the newly created star that it is star number "1"$(13_10)by assigning its my_star_number variable a value of 1.
		/// @DnDParent : 7FF563C2
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "_this_star.my_star_number"
		_this_star.my_star_number = 1;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4603114E
		/// @DnDComment : Set star_done[1] to 1 so that we don't create more$(13_10)than 1 star effect object.
		/// @DnDParent : 7FF563C2
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "obj_score.star_done[1]"
		obj_score.star_done[1] = 1;
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4BB3AA10
/// @DnDComment : If the player has reached the third star on the score bar$(13_10)(by getting the score target)...
/// @DnDArgument : "var" "global.score_total"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "global.score_target"
if(global.score_total >= global.score_target)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6D6F95FA
	/// @DnDComment : If we haven't yet created the instance which animates this $(13_10)star on the HUD...
	/// @DnDParent : 4BB3AA10
	/// @DnDArgument : "var" "obj_score.star_done[2]"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "1"
	if(obj_score.star_done[2] < 1)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 69536152
		/// @DnDComment : Create an instance of the object obj_effect_star$(13_10)at the correct place on the HUD and assign its $(13_10)id to the temporary variable _this_star.
		/// @DnDParent : 6D6F95FA
		/// @DnDArgument : "xpos" "690"
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos" "75"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "var" "_this_star"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "objectid" "obj_effect_star"
		/// @DnDArgument : "layer" ""UIElements2""
		/// @DnDSaveInfo : "objectid" "obj_effect_star"
		var _this_star = instance_create_layer(x + 690, y + 75, "UIElements2", obj_effect_star);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5F903F63
		/// @DnDComment : Tell the newly created star that it is star number "2"$(13_10)by assigning its my_star_number variable a value of 2.
		/// @DnDParent : 6D6F95FA
		/// @DnDArgument : "expr" "2"
		/// @DnDArgument : "var" "_this_star.my_star_number"
		_this_star.my_star_number = 2;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2D638837
		/// @DnDComment : Set star_done[2] to 1 so that we don't create more$(13_10)than 1 star effect object.
		/// @DnDParent : 6D6F95FA
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "obj_score.star_done[2]"
		obj_score.star_done[2] = 1;
	}
}