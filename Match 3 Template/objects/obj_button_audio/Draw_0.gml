/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 4A3451CC
/// @DnDComment : Draw self, this will be the green button base sprite.
draw_self();

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
/// @DnDVersion : 1
/// @DnDHash : 58F9E6B6
/// @DnDComment : Draw the "audio" button overlay.
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "sprite" "spr_button_mute"
/// @DnDArgument : "image" "global.audio_volume"
/// @DnDSaveInfo : "sprite" "spr_button_mute"
draw_sprite(spr_button_mute, global.audio_volume, x + 0, y + 0);