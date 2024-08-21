/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 39F02584
/// @DnDArgument : "funcName" "text_pop_up"
/// @DnDArgument : "arg" "_x,_y,_string_to_show"
function text_pop_up(_x,_y,_string_to_show) 
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 0997FDB1
	/// @DnDComment : Create an instance of obj_text_popup
	/// @DnDParent : 39F02584
	/// @DnDArgument : "xpos" "_x"
	/// @DnDArgument : "ypos" "_y"
	/// @DnDArgument : "var" "_this_popup"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "objectid" "obj_text_popup"
	/// @DnDArgument : "layer" ""UIElements""
	/// @DnDSaveInfo : "objectid" "obj_text_popup"
	var _this_popup = instance_create_layer(_x, _y, "UIElements", obj_text_popup);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 05C406F6
	/// @DnDComment : Set the variable my_text for this new object to$(13_10)the _string_to_show argument passed to the function.
	/// @DnDParent : 39F02584
	/// @DnDArgument : "expr" "_string_to_show"
	/// @DnDArgument : "var" "_this_popup.my_text"
	_this_popup.my_text = _string_to_show;
}