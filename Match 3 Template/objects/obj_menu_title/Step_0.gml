/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 2200222D
/// @DnDComment : Call the function screen_resize, which will resize$(13_10)the view to fit different devices.$(13_10)$(13_10)See the scripts folder for more details.
/// @DnDArgument : "function" "screen_resize"
screen_resize();

/// @DnDAction : YoYo Games.Common.Exit_Event
/// @DnDVersion : 1
/// @DnDHash : 0E817EEF
exit;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 41577947
/// @DnDComment : If y is less than 320 (where we want the$(13_10)title to draw on the screen)
/// @DnDArgument : "var" "y"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "400 + 6 * 120"
if(y < 400 + 6 * 120)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0CB42ED8
	/// @DnDComment : Add 10 to the y position until it $(13_10)reaches the place where we want$(13_10)it to appear on the screen
	/// @DnDParent : 41577947
	/// @DnDArgument : "expr" "10"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "y"
	y += 10;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 09A9E610
/// @DnDComment : If y has reached 320, where we want the title$(13_10)to appear
else
{
	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 2A3D1F68
	/// @DnDComment : If the menu buttons don't exist yet$(13_10)we will need to create them
	/// @DnDParent : 09A9E610
	/// @DnDArgument : "obj" "obj_menu_button_play"
	/// @DnDArgument : "not" "1"
	/// @DnDSaveInfo : "obj" "obj_menu_button_play"
	var l2A3D1F68_0 = false;
	l2A3D1F68_0 = instance_exists(obj_menu_button_play);
	if(!l2A3D1F68_0)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 72DBCE14
		/// @DnDComment : We create the play button for the menu$(13_10)off-screen at 1180 because it will animate$(13_10)onto the screen like the logo does.
		/// @DnDParent : 2A3D1F68
		/// @DnDArgument : "xpos" "960"
		/// @DnDArgument : "ypos" "camera_get_view_y(view_camera[0]) + 1180"
		/// @DnDArgument : "objectid" "obj_menu_button_play"
		/// @DnDSaveInfo : "objectid" "obj_menu_button_play"
		instance_create_layer(960, camera_get_view_y(view_camera[0]) + 1180, "Instances", obj_menu_button_play);
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 51B9D95D
		/// @DnDComment : We create the quit button for the menu$(13_10)off-screen at 1340 because it will animate $(13_10)onto the screen like the logo does.
		/// @DnDParent : 2A3D1F68
		/// @DnDArgument : "xpos" "960"
		/// @DnDArgument : "ypos" "camera_get_view_y(view_camera[0]) + 1340"
		/// @DnDArgument : "objectid" "obj_menu_button_quit"
		/// @DnDSaveInfo : "objectid" "obj_menu_button_quit"
		instance_create_layer(960, camera_get_view_y(view_camera[0]) + 1340, "Instances", obj_menu_button_quit);
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 108A10C9
		/// @DnDComment : We create the mute button for the menu$(13_10)off-screen because it will animate $(13_10)onto the screen like the logo does.
		/// @DnDParent : 2A3D1F68
		/// @DnDArgument : "xpos" "camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])-120"
		/// @DnDArgument : "ypos" "camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])+120"
		/// @DnDArgument : "objectid" "obj_menu_button_mute"
		instance_create_layer(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])-120, camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])+120, "Instances", obj_menu_button_mute);
	}
}