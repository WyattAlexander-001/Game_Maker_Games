/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 22978D58
/// @DnDInput : 4
/// @DnDArgument : "funcName" "draw_value_bordered"
/// @DnDArgument : "arg" "caption"
/// @DnDArgument : "arg_1" "value"
/// @DnDArgument : "arg_2" "x"
/// @DnDArgument : "arg_3" "y"
function draw_value_bordered(caption, value, x, y) 
{
	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 349A6B51
	/// @DnDParent : 22978D58
	/// @DnDArgument : "color" "$FF093F68"
	/// @DnDArgument : "alpha" "false"
	draw_set_colour($FF093F68 & $ffffff);draw_set_alpha(1);

	/// @DnDAction : YoYo Games.Loops.For_Loop
	/// @DnDVersion : 1
	/// @DnDHash : 3B224686
	/// @DnDParent : 22978D58
	/// @DnDArgument : "cond" "i < 360"
	/// @DnDArgument : "expr" "i += 36"
	for(i = 0; i < 360; i += 36) {
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0AA9F0B6
		/// @DnDInput : 2
		/// @DnDParent : 3B224686
		/// @DnDArgument : "var" "_x"
		/// @DnDArgument : "value" "lengthdir_x(4, i)"
		/// @DnDArgument : "var_1" "_y"
		/// @DnDArgument : "value_1" "lengthdir_y(4, i)"
		var _x = lengthdir_x(4, i);
		var _y = lengthdir_y(4, i);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 2A63DED3
		/// @DnDParent : 3B224686
		/// @DnDArgument : "x" "x + _x"
		/// @DnDArgument : "y" "y + _y"
		/// @DnDArgument : "caption" "caption"
		/// @DnDArgument : "var" "value"
		draw_text(x + _x, y + _y, string(caption) + string(value));
	}

	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 364F4A7E
	/// @DnDParent : 22978D58
	/// @DnDArgument : "alpha" "false"
	draw_set_colour($FFFFFFFF & $ffffff);draw_set_alpha(1);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 33A3C764
	/// @DnDParent : 22978D58
	/// @DnDArgument : "x" "x"
	/// @DnDArgument : "y" "y"
	/// @DnDArgument : "caption" "caption"
	/// @DnDArgument : "var" "value"
	draw_text(x, y, string(caption) + string(value));
}