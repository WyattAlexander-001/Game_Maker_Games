/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 65271C4F
/// @DnDArgument : "color" "$64000000"
draw_set_colour($64000000 & $ffffff);
var l65271C4F_0=($64000000 >> 24);
draw_set_alpha(l65271C4F_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Rectangle
/// @DnDVersion : 1
/// @DnDHash : 5A66C910
/// @DnDArgument : "x1" "camera_get_view_x(view_camera[0])"
/// @DnDArgument : "y1" "camera_get_view_y(view_camera[0])"
/// @DnDArgument : "x2" "camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])"
/// @DnDArgument : "y2" "camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])"
/// @DnDArgument : "fill" "1"
draw_rectangle(camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]), camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]), camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]), 0);

/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 4B2249C2
draw_self();

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 75528453
/// @DnDArgument : "color" "$FF093F68"
/// @DnDArgument : "alpha" "false"
draw_set_colour($FF093F68 & $ffffff);draw_set_alpha(1);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 51C10491
/// @DnDArgument : "font" "fnt_medium_text"
/// @DnDSaveInfo : "font" "fnt_medium_text"
draw_set_font(fnt_medium_text);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 335E6E40
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "-80"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""GAME PAUSED...""
draw_text(x + 0, y + -80, string("GAME PAUSED...") + "");

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
/// @DnDVersion : 1
/// @DnDHash : 09F7CF6A
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "-10"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "sprite" "spr_decal"
/// @DnDSaveInfo : "sprite" "spr_decal"
draw_sprite(spr_decal, 0, x + 0, y + -10);