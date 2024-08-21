/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 021A8DB2
/// @DnDComment : Draw button sprite.
draw_self();

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 220DB0EC
/// @DnDComment : Change font.
/// @DnDArgument : "font" "fnt_big_text"
/// @DnDSaveInfo : "font" "fnt_big_text"
draw_set_font(fnt_big_text);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 08B3EEB7
/// @DnDComment : Change text alignment.
/// @DnDArgument : "halign" "fa_center"
/// @DnDArgument : "valign" "fa_middle"
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 2643C92E
/// @DnDComment : Change drawing color.
/// @DnDArgument : "alpha" "false"
draw_set_colour($FFFFFFFF & $ffffff);draw_set_alpha(1);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 1DBF00E2
/// @DnDComment : Draw the button text.
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "-5"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""QUIT""
draw_text(x + 0, y + -5, string("QUIT") + "");