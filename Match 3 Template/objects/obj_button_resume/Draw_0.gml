/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 4A3451CC
/// @DnDComment : Draw self, this will be the green button base sprite.
draw_self();

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
/// @DnDVersion : 1
/// @DnDHash : 58F9E6B6
/// @DnDComment : Draw the "next" button overlay.
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "sprite" "spr_button_next"
/// @DnDSaveInfo : "sprite" "spr_button_next"
draw_sprite(spr_button_next, 0, x + 0, y + 0);