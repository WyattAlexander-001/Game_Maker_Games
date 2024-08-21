/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1EC07383
/// @DnDComment : If y is not camera_get_view_height(view_camera[0])-120, the position we want$(13_10)this button to be displayed on the menu screen...
/// @DnDArgument : "var" "y"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "camera_get_view_height(view_camera[0])-120"
if(!(y == camera_get_view_height(view_camera[0])-120))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4D0727C6
	/// @DnDComment : Smoothly animate the y position using the lerp() function.
	/// @DnDParent : 1EC07383
	/// @DnDArgument : "expr" "lerp(y, camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])-120,0.1)"
	/// @DnDArgument : "var" "y"
	y = lerp(y, camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])-120,0.1);
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7ED3A6E1
/// @DnDComment : Stay in the right place on screen even if the player$(13_10)resizes the window.
/// @DnDArgument : "expr" "camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])-120"
/// @DnDArgument : "var" "x"
x = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])-120;

/// @DnDAction : YoYo Games.Instances.Sprite_Image_Alpha
/// @DnDVersion : 1
/// @DnDHash : 7AB938E0
/// @DnDComment : Smoothly animate the instance alpha towards a value of 1 using$(13_10)the lerp() function.
/// @DnDArgument : "alpha" "lerp(image_alpha,1,0.1)"
image_alpha = lerp(image_alpha,1,0.1);