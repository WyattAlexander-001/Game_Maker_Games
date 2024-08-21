/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 5444CC16
/// @DnDComment : Call the function screen_resize, which will resize$(13_10)the view to fit different devices.$(13_10)$(13_10)See the scripts folder for more details.
/// @DnDArgument : "function" "screen_resize"
screen_resize();

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Pressed
/// @DnDVersion : 1.1
/// @DnDHash : 4E884E85
var l4E884E85_0;
l4E884E85_0 = mouse_check_button_pressed(mb_left);
if (l4E884E85_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1ABB5B80
	/// @DnDParent : 4E884E85
	/// @DnDArgument : "expr" "mouse_x"
	/// @DnDArgument : "var" "drag_start_x"
	drag_start_x = mouse_x;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 56DE8F46
	/// @DnDParent : 4E884E85
	/// @DnDArgument : "expr" "mouse_y"
	/// @DnDArgument : "var" "drag_start_y"
	drag_start_y = mouse_y;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Released
/// @DnDVersion : 1.1
/// @DnDHash : 0D80D4CB
var l0D80D4CB_0;
l0D80D4CB_0 = mouse_check_button_released(mb_left);
if (l0D80D4CB_0)
{
	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 47EB1DBE
	/// @DnDParent : 0D80D4CB
	/// @DnDArgument : "var" "_drag_end_x"
	/// @DnDArgument : "value" "mouse_x"
	var _drag_end_x = mouse_x;

	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 188BB08F
	/// @DnDParent : 0D80D4CB
	/// @DnDArgument : "var" "_drag_end_y"
	/// @DnDArgument : "value" "mouse_y"
	var _drag_end_y = mouse_y;

	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1799A0B1
	/// @DnDParent : 0D80D4CB
	/// @DnDArgument : "var" "_hdrag"
	/// @DnDArgument : "value" "_drag_end_x - drag_start_x"
	var _hdrag = _drag_end_x - drag_start_x;

	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 44D4F160
	/// @DnDParent : 0D80D4CB
	/// @DnDArgument : "var" "_vdrag"
	/// @DnDArgument : "value" "_drag_end_y - drag_start_y"
	var _vdrag = _drag_end_y - drag_start_y;

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 66B9A879
	/// @DnDInput : 3
	/// @DnDParent : 0D80D4CB
	/// @DnDArgument : "var" "_piece"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "function" "instance_position"
	/// @DnDArgument : "arg" "drag_start_x"
	/// @DnDArgument : "arg_1" "drag_start_y"
	/// @DnDArgument : "arg_2" "obj_matching_piece"
	var _piece = instance_position(drag_start_x, drag_start_y, obj_matching_piece);

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 75F6E548
	/// @DnDInput : 2
	/// @DnDApplyTo : _piece
	/// @DnDParent : 0D80D4CB
	/// @DnDArgument : "function" "check_drag"
	/// @DnDArgument : "arg" "_hdrag"
	/// @DnDArgument : "arg_1" "_vdrag"
	with(_piece) {
		check_drag(_hdrag, _vdrag);
	}
}