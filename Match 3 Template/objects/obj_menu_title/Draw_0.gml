/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 7BF73F8C
/// @DnDArgument : "x" "camera_get_view_x(view_camera[0])"
/// @DnDArgument : "y" "camera_get_view_y(view_camera[0])"
/// @DnDArgument : "xscale" "camera_get_view_width(view_camera[0]) / 1080"
/// @DnDArgument : "yscale" "camera_get_view_height(view_camera[0]) / 1387"
/// @DnDArgument : "sprite" "spr_background"
/// @DnDSaveInfo : "sprite" "spr_background"
draw_sprite_ext(spr_background, 0, camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]), camera_get_view_width(view_camera[0]) / 1080, camera_get_view_height(view_camera[0]) / 1387, 0, $FFFFFF & $ffffff, 1);

/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 3AE341F5
draw_self();