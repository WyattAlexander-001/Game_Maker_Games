/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 328126EF
/// @DnDComment : Draw the object's srpite, this is the panel sprite.
draw_self();

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 47F0549C
/// @DnDComment : Change draw color.
/// @DnDArgument : "color" "$FF093F68"
draw_set_colour($FF093F68 & $ffffff);
var l47F0549C_0=($FF093F68 >> 24);
draw_set_alpha(l47F0549C_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 605DFB72
/// @DnDComment : Change font.
/// @DnDArgument : "font" "fnt_big_text"
/// @DnDSaveInfo : "font" "fnt_big_text"
draw_set_font(fnt_big_text);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 7A1B5A5E
/// @DnDComment : Draw "MENU" at the top of the panel.
/// @DnDArgument : "x" "165"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "70"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""MENU""
draw_text(x + 165, y + 70, string("MENU") + "");

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 0BE3D606
/// @DnDComment : Change font again!
/// @DnDArgument : "font" "fnt_main"
/// @DnDSaveInfo : "font" "fnt_main"
draw_set_font(fnt_main);

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 2AC4BC4E
/// @DnDComment : We use this "_y_offset" variable to decide at what y$(13_10)position we start drawing the objectives.$(13_10)$(13_10)This value is different depending on if we have 1, 2$(13_10)or 3 objectives. The default value is for is we have 3$(13_10)objectives.
/// @DnDArgument : "var" "_y_offset"
/// @DnDArgument : "value" "120"
var _y_offset = 120;

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 7E4E33F5
/// @DnDComment : If we DON'T have a second objective, then we must have$(13_10)just ONE objective...
/// @DnDArgument : "expr" "type_1 == -1"
if(type_1 == -1)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7E02872A
	/// @DnDComment : Change _y_offet. This should be the middle$(13_10)of the panel.
	/// @DnDParent : 7E4E33F5
	/// @DnDArgument : "expr" "190"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "_y_offset"
	_y_offset += 190;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 0D529FA7
/// @DnDComment : Else we DO have a second objective...
else
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 76BF791B
	/// @DnDComment : But we DON'T have a third objective...
	/// @DnDParent : 0D529FA7
	/// @DnDArgument : "expr" "type_2 == -1"
	if(type_2 == -1)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 29C40DDD
		/// @DnDComment : Then we must have just 2 objectives!
		/// @DnDParent : 76BF791B
		/// @DnDArgument : "expr" "190 / 2"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "_y_offset"
		_y_offset += 190 / 2;
	}
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 3342C49A
/// @DnDComment : If objective 1 is available....
/// @DnDArgument : "expr" "type_0 != -1"
if(type_0 != -1)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 7001B547
	/// @DnDComment : Draw the objective token, using the type variable$(13_10)for objective 1 as the image index.
	/// @DnDParent : 3342C49A
	/// @DnDArgument : "x" "70"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "_y_offset"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "sprite" "spr_objective_tokens"
	/// @DnDArgument : "image" "type_0"
	/// @DnDSaveInfo : "sprite" "spr_objective_tokens"
	draw_sprite(spr_objective_tokens, type_0, x + 70, y + _y_offset);

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 75B25A39
	/// @DnDComment : If the amount of tokens still required is over 0...
	/// @DnDParent : 3342C49A
	/// @DnDArgument : "expr" "amount_0 > 0"
	if(amount_0 > 0)
	{
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 70463021
		/// @DnDComment : Draw text showing the number of tokens$(13_10)still required for objective 1.
		/// @DnDInput : 4
		/// @DnDParent : 75B25A39
		/// @DnDArgument : "function" "draw_value_bordered"
		/// @DnDArgument : "arg" ""x""
		/// @DnDArgument : "arg_1" "amount_0"
		/// @DnDArgument : "arg_2" "x + 70 + 170"
		/// @DnDArgument : "arg_3" "y + _y_offset + 70"
		draw_value_bordered("x", amount_0, x + 70 + 170, y + _y_offset + 70);
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 1C7AA379
	/// @DnDComment : Else there's no more tokens left to get for this objective...
	/// @DnDParent : 3342C49A
	else
	{
		/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 69DF6D3E
		/// @DnDComment : So draw a tick to show we completed the objective!
		/// @DnDParent : 1C7AA379
		/// @DnDArgument : "x" "70 + 160"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "_y_offset + 70"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "sprite" "spr_tick"
		/// @DnDSaveInfo : "sprite" "spr_tick"
		draw_sprite(spr_tick, 0, x + 70 + 160, y + _y_offset + 70);
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6B1AE44C
	/// @DnDComment : Add 190 to _y_offset so that the next objective is drawn 190 pixels$(13_10)below the one we just draw.
	/// @DnDParent : 3342C49A
	/// @DnDArgument : "expr" "190"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "_y_offset"
	_y_offset += 190;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 648C7EAC
/// @DnDComment : If objective 2 is available....
/// @DnDArgument : "expr" "type_1 != -1"
if(type_1 != -1)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 75533FB0
	/// @DnDComment : Draw a decorative sprite between objectives 1 and 2.
	/// @DnDParent : 648C7EAC
	/// @DnDArgument : "x" "50 + 115"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "_y_offset - 20"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "xscale" "0.8"
	/// @DnDArgument : "yscale" "0.8"
	/// @DnDArgument : "sprite" "spr_decal"
	/// @DnDSaveInfo : "sprite" "spr_decal"
	draw_sprite_ext(spr_decal, 0, x + 50 + 115, y + _y_offset - 20, 0.8, 0.8, 0, $FFFFFF & $ffffff, 1);

	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 44F85C55
	/// @DnDComment : Draw the objective token, using the type variable$(13_10)for objective 2 as the image index.
	/// @DnDParent : 648C7EAC
	/// @DnDArgument : "x" "70"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "_y_offset"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "sprite" "spr_objective_tokens"
	/// @DnDArgument : "image" "type_1"
	/// @DnDSaveInfo : "sprite" "spr_objective_tokens"
	draw_sprite(spr_objective_tokens, type_1, x + 70, y + _y_offset);

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 19359EB9
	/// @DnDComment : If the amount of tokens still required is over 0...
	/// @DnDParent : 648C7EAC
	/// @DnDArgument : "expr" "amount_1 > 0"
	if(amount_1 > 0)
	{
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 2BC9CFF8
		/// @DnDComment : Draw text showing the number of tokens$(13_10)still required for objective 2.
		/// @DnDInput : 4
		/// @DnDParent : 19359EB9
		/// @DnDArgument : "function" "draw_value_bordered"
		/// @DnDArgument : "arg" ""x""
		/// @DnDArgument : "arg_1" "amount_1"
		/// @DnDArgument : "arg_2" "x + 70 + 170"
		/// @DnDArgument : "arg_3" "y + _y_offset + 70"
		draw_value_bordered("x", amount_1, x + 70 + 170, y + _y_offset + 70);
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 567B3A34
	/// @DnDComment : Else there's no more tokens left to get for this objective...
	/// @DnDParent : 648C7EAC
	else
	{
		/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 707166D4
		/// @DnDComment : So draw a tick to show we completed the objective!
		/// @DnDParent : 567B3A34
		/// @DnDArgument : "x" "70 + 170"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "_y_offset + 70"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "sprite" "spr_tick"
		/// @DnDSaveInfo : "sprite" "spr_tick"
		draw_sprite(spr_tick, 0, x + 70 + 170, y + _y_offset + 70);
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 76D42266
	/// @DnDComment : Add 190 to _y_offset so that the next objective is drawn 190 pixels$(13_10)below the one we just draw.
	/// @DnDParent : 648C7EAC
	/// @DnDArgument : "expr" "190"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "_y_offset"
	_y_offset += 190;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 3212C214
/// @DnDComment : If objective 2 is available....
/// @DnDArgument : "expr" "type_2 != -1"
if(type_2 != -1)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 31C25A15
	/// @DnDComment : Draw a decorative sprite between objectives 2 and 3.
	/// @DnDParent : 3212C214
	/// @DnDArgument : "x" "50 + 115"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "_y_offset - 20"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "xscale" "0.8"
	/// @DnDArgument : "yscale" "0.8"
	/// @DnDArgument : "sprite" "spr_decal"
	/// @DnDSaveInfo : "sprite" "spr_decal"
	draw_sprite_ext(spr_decal, 0, x + 50 + 115, y + _y_offset - 20, 0.8, 0.8, 0, $FFFFFF & $ffffff, 1);

	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 7604A018
	/// @DnDComment : Draw the objective token, using the type variable$(13_10)for objective 3 as the image index.
	/// @DnDParent : 3212C214
	/// @DnDArgument : "x" "70"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "_y_offset"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "sprite" "spr_objective_tokens"
	/// @DnDArgument : "image" "type_2"
	/// @DnDSaveInfo : "sprite" "spr_objective_tokens"
	draw_sprite(spr_objective_tokens, type_2, x + 70, y + _y_offset);

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 3A35E78F
	/// @DnDComment : If the amount of tokens still required is over 0...
	/// @DnDParent : 3212C214
	/// @DnDArgument : "expr" "amount_2 > 0"
	if(amount_2 > 0)
	{
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 5B1D8E62
		/// @DnDComment : Draw text showing the number of tokens$(13_10)still required for objective 3.
		/// @DnDInput : 4
		/// @DnDParent : 3A35E78F
		/// @DnDArgument : "function" "draw_value_bordered"
		/// @DnDArgument : "arg" ""x""
		/// @DnDArgument : "arg_1" "amount_2"
		/// @DnDArgument : "arg_2" "x + 70 + 170"
		/// @DnDArgument : "arg_3" "y + _y_offset + 70"
		draw_value_bordered("x", amount_2, x + 70 + 170, y + _y_offset + 70);
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 298F0893
	/// @DnDComment : Else there's no more tokens left to get for this objective...
	/// @DnDParent : 3212C214
	else
	{
		/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 236E3E37
		/// @DnDComment : So draw a tick to show we completed the objective!
		/// @DnDParent : 298F0893
		/// @DnDArgument : "x" "70 + 160"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "_y_offset + 70"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "sprite" "spr_tick"
		/// @DnDSaveInfo : "sprite" "spr_tick"
		draw_sprite(spr_tick, 0, x + 70 + 160, y + _y_offset + 70);
	}
}

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 133C3070
/// @DnDComment : Draw the moves remaining icon.
/// @DnDArgument : "x" "130"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "685"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "xscale" "0.8"
/// @DnDArgument : "yscale" "0.8"
/// @DnDArgument : "sprite" "spr_moves_icon"
/// @DnDSaveInfo : "sprite" "spr_moves_icon"
draw_sprite_ext(spr_moves_icon, 0, x + 130, y + 685, 0.8, 0.8, 0, $FFFFFF & $ffffff, 1);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 587209A8
/// @DnDComment : Change draw color.
/// @DnDArgument : "color" "$FF093F68"
/// @DnDArgument : "alpha" "false"
draw_set_colour($FF093F68 & $ffffff);draw_set_alpha(1);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 336B6194
/// @DnDComment : Change font again!
/// @DnDArgument : "font" "fnt_score"
/// @DnDSaveInfo : "font" "fnt_score"
draw_set_font(fnt_score);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 23F22EED
/// @DnDComment : Draw the number of moves available.
/// @DnDArgument : "x" "205"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "690"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""
/// @DnDArgument : "var" "global.moves_available"
draw_text(x + 205, y + 690,  + string(global.moves_available));