/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 328126EF
/// @DnDComment : Draw the panel sprite.
draw_self();

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 47F0549C
/// @DnDComment : Change color.
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
/// @DnDArgument : "x" "428"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "70"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""MENU""
draw_text(x + 428, y + 70, string("MENU") + "");

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 0BE3D606
/// @DnDComment : Change font.
/// @DnDArgument : "font" "fnt_main"
/// @DnDSaveInfo : "font" "fnt_main"
draw_set_font(fnt_main);

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 2AC4BC4E
/// @DnDComment : We use this "_x_offset" variable to decide at what x$(13_10)position we start drawing the objectives.$(13_10)$(13_10)This value is different depending on if we have 1, 2$(13_10)or 3 objectives. The default value is for is we have 3$(13_10)objectives.
/// @DnDArgument : "var" "_x_offset"
/// @DnDArgument : "value" "120"
var _x_offset = 120;

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 7E4E33F5
/// @DnDComment : If we DON'T have a second objective, then we must have$(13_10)just ONE objective...
/// @DnDArgument : "expr" "obj_objectives.type_1 == -1"
if(obj_objectives.type_1 == -1)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7E02872A
	/// @DnDComment : Change _x_offet. This should be the middle$(13_10)of the panel.
	/// @DnDParent : 7E4E33F5
	/// @DnDArgument : "expr" "190"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "_x_offset"
	_x_offset += 190;
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
	/// @DnDArgument : "expr" "obj_objectives.type_2 == -1"
	if(obj_objectives.type_2 == -1)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 29C40DDD
		/// @DnDComment : Then we must have just 2 objectives!
		/// @DnDParent : 76BF791B
		/// @DnDArgument : "expr" "190 / 2"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "_x_offset"
		_x_offset += 190 / 2;
	}
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 3342C49A
/// @DnDComment : If objective 1 is available....
/// @DnDArgument : "expr" "obj_objectives.type_0 != -1"
if(obj_objectives.type_0 != -1)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 7001B547
	/// @DnDComment : Draw the objective token, using the type variable$(13_10)for objective 1 as the image index.
	/// @DnDParent : 3342C49A
	/// @DnDArgument : "x" "_x_offset + 50"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "100"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "sprite" "spr_objective_tokens"
	/// @DnDArgument : "image" "obj_objectives.type_0"
	/// @DnDSaveInfo : "sprite" "spr_objective_tokens"
	draw_sprite(spr_objective_tokens, obj_objectives.type_0, x + _x_offset + 50, y + 100);

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 75B25A39
	/// @DnDComment : If the amount of tokens still required is over 0...
	/// @DnDParent : 3342C49A
	/// @DnDArgument : "expr" "obj_objectives.amount_0 > 0"
	if(obj_objectives.amount_0 > 0)
	{
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 70463021
		/// @DnDComment : Draw text showing the number of tokens$(13_10)still required for objective 1.
		/// @DnDInput : 4
		/// @DnDParent : 75B25A39
		/// @DnDArgument : "function" "draw_value_bordered"
		/// @DnDArgument : "arg" ""x""
		/// @DnDArgument : "arg_1" "obj_objectives.amount_0"
		/// @DnDArgument : "arg_2" "x + _x_offset + 80 + 50"
		/// @DnDArgument : "arg_3" "y + 70 + 160"
		draw_value_bordered("x", obj_objectives.amount_0, x + _x_offset + 80 + 50, y + 70 + 160);
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
		/// @DnDArgument : "x" "_x_offset + 80 + 50"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "70 + 145"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "sprite" "spr_tick"
		/// @DnDSaveInfo : "sprite" "spr_tick"
		draw_sprite(spr_tick, 0, x + _x_offset + 80 + 50, y + 70 + 145);
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6B1AE44C
	/// @DnDComment : Add 190 to _y_offset so that the next objective is drawn 190 pixels$(13_10)below the one we just draw.
	/// @DnDParent : 3342C49A
	/// @DnDArgument : "expr" "190"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "_x_offset"
	_x_offset += 190;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 648C7EAC
/// @DnDComment : If objective 2 is available....
/// @DnDArgument : "expr" "obj_objectives.type_1 != -1"
if(obj_objectives.type_1 != -1)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 44F85C55
	/// @DnDComment : Draw the objective token, using the type variable$(13_10)for objective 2 as the image index.
	/// @DnDParent : 648C7EAC
	/// @DnDArgument : "x" "_x_offset + 50"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "100"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "sprite" "spr_objective_tokens"
	/// @DnDArgument : "image" "obj_objectives.type_1"
	/// @DnDSaveInfo : "sprite" "spr_objective_tokens"
	draw_sprite(spr_objective_tokens, obj_objectives.type_1, x + _x_offset + 50, y + 100);

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 19359EB9
	/// @DnDComment : If the amount of tokens still required is over 0...
	/// @DnDParent : 648C7EAC
	/// @DnDArgument : "expr" "obj_objectives.amount_1 > 0"
	if(obj_objectives.amount_1 > 0)
	{
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 2BC9CFF8
		/// @DnDComment : Draw text showing the number of tokens$(13_10)still required for objective 2.
		/// @DnDInput : 4
		/// @DnDParent : 19359EB9
		/// @DnDArgument : "function" "draw_value_bordered"
		/// @DnDArgument : "arg" ""x""
		/// @DnDArgument : "arg_1" "obj_objectives.amount_1"
		/// @DnDArgument : "arg_2" "x + _x_offset + 80 + 50"
		/// @DnDArgument : "arg_3" "y + 70 + 160"
		draw_value_bordered("x", obj_objectives.amount_1, x + _x_offset + 80 + 50, y + 70 + 160);
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
		/// @DnDParent : 567B3A34
		/// @DnDArgument : "x" "_x_offset + 80 + 50"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "70 + 145"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "sprite" "spr_tick"
		/// @DnDSaveInfo : "sprite" "spr_tick"
		draw_sprite(spr_tick, 0, x + _x_offset + 80 + 50, y + 70 + 145);
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 76D42266
	/// @DnDComment : Add 190 to _x_offset so that the next objective is drawn 190 pixels$(13_10)below the one we just draw.
	/// @DnDParent : 648C7EAC
	/// @DnDArgument : "expr" "190"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "_x_offset"
	_x_offset += 190;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 3212C214
/// @DnDComment : If objective 2 is available....
/// @DnDArgument : "expr" "obj_objectives.type_2 != -1"
if(obj_objectives.type_2 != -1)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 7604A018
	/// @DnDComment : Draw the objective token, using the type variable$(13_10)for objective 3 as the image index.
	/// @DnDParent : 3212C214
	/// @DnDArgument : "x" "_x_offset + 50"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "100"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "sprite" "spr_objective_tokens"
	/// @DnDArgument : "image" "obj_objectives.type_2"
	/// @DnDSaveInfo : "sprite" "spr_objective_tokens"
	draw_sprite(spr_objective_tokens, obj_objectives.type_2, x + _x_offset + 50, y + 100);

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 3A35E78F
	/// @DnDComment : If the amount of tokens still required is over 0...
	/// @DnDParent : 3212C214
	/// @DnDArgument : "expr" "obj_objectives.amount_2 > 0"
	if(obj_objectives.amount_2 > 0)
	{
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 5B1D8E62
		/// @DnDComment : Draw text showing the number of tokens$(13_10)still required for objective 3.
		/// @DnDInput : 4
		/// @DnDParent : 3A35E78F
		/// @DnDArgument : "function" "draw_value_bordered"
		/// @DnDArgument : "arg" ""x""
		/// @DnDArgument : "arg_1" "obj_objectives.amount_2"
		/// @DnDArgument : "arg_2" "x + _x_offset + 80 + 50"
		/// @DnDArgument : "arg_3" "y + 70 + 160"
		draw_value_bordered("x", obj_objectives.amount_2, x + _x_offset + 80 + 50, y + 70 + 160);
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
		/// @DnDArgument : "x" "_x_offset + 80 + 50"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "70 + 145"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "sprite" "spr_tick"
		/// @DnDSaveInfo : "sprite" "spr_tick"
		draw_sprite(spr_tick, 0, x + _x_offset + 80 + 50, y + 70 + 145);
	}
}