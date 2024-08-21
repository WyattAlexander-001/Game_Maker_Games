/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 4A3451CC
/// @DnDComment : Draw self, this will be the red button base sprite.
draw_self();

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
/// @DnDVersion : 1
/// @DnDHash : 58F9E6B6
/// @DnDComment : Draw the "home" button overlay.
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "sprite" "spr_button_home"
/// @DnDSaveInfo : "sprite" "spr_button_home"
draw_sprite(spr_button_home, 0, x + 0, y + 0);