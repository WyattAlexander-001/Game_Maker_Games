/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 172A6950
/// @DnDArgument : "color" "$64000000"
draw_set_colour($64000000 & $ffffff);
var l172A6950_0=($64000000 >> 24);
draw_set_alpha(l172A6950_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Rectangle
/// @DnDVersion : 1
/// @DnDHash : 0FA0CA3A
/// @DnDArgument : "x1" "camera_get_view_x(view_camera[0])"
/// @DnDArgument : "y1" "camera_get_view_y(view_camera[0])"
/// @DnDArgument : "x2" "camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])"
/// @DnDArgument : "y2" "camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])"
/// @DnDArgument : "fill" "1"
draw_rectangle(camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]), camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]), camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]), 0);

/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 0BF0BE36
draw_self();

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 55EF159F
/// @DnDArgument : "font" "fnt_medium_text"
/// @DnDSaveInfo : "font" "fnt_medium_text"
draw_set_font(fnt_medium_text);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 57970FE7
/// @DnDArgument : "color" "$FF093F68"
/// @DnDArgument : "alpha" "false"
draw_set_colour($FF093F68 & $ffffff);draw_set_alpha(1);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 1D860597
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "-70"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""NO VALID MOVES!""
draw_text(x + 0, y + -70, string("NO VALID MOVES!") + "");

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
/// @DnDVersion : 1
/// @DnDHash : 059D2DCD
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "sprite" "spr_decal"
/// @DnDSaveInfo : "sprite" "spr_decal"
draw_sprite(spr_decal, 0, x + 0, y + 0);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 51F988AC
/// @DnDArgument : "font" "fnt_small_text"
/// @DnDSaveInfo : "font" "fnt_small_text"
draw_set_font(fnt_small_text);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 753BED78
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "70"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""Shuffling...""
draw_text(x + 0, y + 70, string("Shuffling...") + "");