/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 4136B546
/// @DnDComment : Set the font for drawing text to font_main
/// @DnDArgument : "font" "fnt_main"
/// @DnDSaveInfo : "font" "fnt_main"
draw_set_font(fnt_main);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 556F0A9F
/// @DnDComment : Set the text alignment for drawing to the middle$(13_10)horizontally and the middle vertically.
/// @DnDArgument : "halign" "fa_center"
/// @DnDArgument : "valign" "fa_middle"
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 7BF0ACBB
/// @DnDComment : Set the drawing color to black.
/// @DnDArgument : "color" "$FF000000"
draw_set_colour($FF000000 & $ffffff);
var l7BF0ACBB_0=($FF000000 >> 24);
draw_set_alpha(l7BF0ACBB_0 / $ff);

/// @DnDAction : YoYo Games.Loops.For_Loop
/// @DnDVersion : 1
/// @DnDHash : 6A893C4F
/// @DnDComment : Start a for loop for drawing the text outline.$(13_10)$(13_10)we initialise a temporary variable i to 0, increment$(13_10)it by 1 each time the loop runs, and finish the loop$(13_10)when i reaches 8.
/// @DnDArgument : "init_temp" "1"
/// @DnDArgument : "cond" "i < 8"
for(var i = 0; i < 8; i += 1) {
	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 0ABDEB70
	/// @DnDComment : Draw the value of the variable my_text at the current$(13_10)x and y position of the instance, but use the functions$(13_10)lengthdir_x and lengthdir_y to offset the text as this $(13_10)will create the outline effect.
	/// @DnDParent : 6A893C4F
	/// @DnDArgument : "x" "x + lengthdir_x(2,i*45)"
	/// @DnDArgument : "y" "y + lengthdir_y(2,i*45)"
	/// @DnDArgument : "caption" ""
	/// @DnDArgument : "var" "my_text"
	draw_text(x + lengthdir_x(2,i*45), y + lengthdir_y(2,i*45),  + string(my_text));
}

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 5A130660
/// @DnDComment : Set the drawing color to white.
draw_set_colour($FFFFFFFF & $ffffff);
var l5A130660_0=($FFFFFFFF >> 24);
draw_set_alpha(l5A130660_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 67667A16
/// @DnDComment : Draw the value of the variable my_text at the current$(13_10)x and y position of this instance.
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""
/// @DnDArgument : "var" "my_text"
draw_text(x + 0, y + 0,  + string(my_text));