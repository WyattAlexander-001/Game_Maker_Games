/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 28A580FE
/// @DnDArgument : "color" "$64000000"
draw_set_colour($64000000 & $ffffff);
var l28A580FE_0=($64000000 >> 24);
draw_set_alpha(l28A580FE_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Rectangle
/// @DnDVersion : 1
/// @DnDHash : 7DA248DA
/// @DnDArgument : "x1" "camera_get_view_x(view_camera[0])"
/// @DnDArgument : "y1" "camera_get_view_y(view_camera[0])"
/// @DnDArgument : "x2" "camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])"
/// @DnDArgument : "y2" "camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])"
/// @DnDArgument : "fill" "1"
draw_rectangle(camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]), camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]), camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]), 0);

/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 6550775D
/// @DnDComment : Draw self, this will be the large panel sprite.
draw_self();

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 1DE0CC52
/// @DnDArgument : "color" "$FF093F68"
/// @DnDArgument : "alpha" "false"
draw_set_colour($FF093F68 & $ffffff);draw_set_alpha(1);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 0ED2BD01
/// @DnDArgument : "font" "fnt_big_text"
/// @DnDSaveInfo : "font" "fnt_big_text"
draw_set_font(fnt_big_text);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 49741506
/// @DnDComment : Draw some text on the panel.
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "-80"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""UNLUCKY""
draw_text(x + 0, y + -80, string("UNLUCKY") + "");

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
/// @DnDVersion : 1
/// @DnDHash : 6E0F77EC
/// @DnDComment : Draw the decal sprite, this will be between the text$(13_10)and the buttons.
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "-10"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "sprite" "spr_decal"
/// @DnDSaveInfo : "sprite" "spr_decal"
draw_sprite(spr_decal, 0, x + 0, y + -10);