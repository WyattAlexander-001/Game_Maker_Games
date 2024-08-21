/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 3745F828
/// @DnDComment : If view width > view height then we are in portrait...
/// @DnDArgument : "expr" "camera_get_view_width(view_camera[0]) > camera_get_view_height(view_camera[0])"
if(camera_get_view_width(view_camera[0]) > camera_get_view_height(view_camera[0]))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 389C93C1
	/// @DnDComment : Make this obvject visible because it's landscape!
	/// @DnDParent : 3745F828
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "visible"
	visible = true;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 02ECC63F
/// @DnDComment : El we are in portrait...
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 42897BCE
	/// @DnDComment : Make this object invisible.
	/// @DnDParent : 02ECC63F
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "visible"
	visible = false;
}