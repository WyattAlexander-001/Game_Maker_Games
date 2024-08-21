/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 548238E4
/// @DnDComment : If view width is over view height, then we are in landscape...
/// @DnDArgument : "expr" "camera_get_view_width(view_camera[0]) > camera_get_view_height(view_camera[0])"
if(camera_get_view_width(view_camera[0]) > camera_get_view_height(view_camera[0]))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 586A8E46
	/// @DnDComment : And so we are hidden!
	/// @DnDParent : 548238E4
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "visible"
	visible = false;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 1BA58EFB
/// @DnDComment : Else we are in portrait...
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2A9BAA96
	/// @DnDComment : And so we are visible!
	/// @DnDParent : 1BA58EFB
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "visible"
	visible = true;
}