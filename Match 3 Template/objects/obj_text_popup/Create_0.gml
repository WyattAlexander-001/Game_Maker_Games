/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0494885D
/// @DnDComment : Set the variable my_text to a blank string "".$(13_10)$(13_10)This variable is altered by objects which $(13_10)create this one.
/// @DnDArgument : "expr" """"
/// @DnDArgument : "var" "my_text"
my_text = "";

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 4257F27D
/// @DnDArgument : "funcName" "_destroy_popup"
/// @DnDArgument : "temp" "1"
var _destroy_popup = function() 
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7DD19CCB
	/// @DnDComment : Destroy the instance.
	/// @DnDParent : 4257F27D
	instance_destroy();
}

/// @DnDAction : YoYo Games.Time.Time_Source_Create
/// @DnDVersion : 1
/// @DnDHash : 0E627017
/// @DnDArgument : "idx" "ts_destroy_popup"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "parent" "time_source_game"
/// @DnDArgument : "period" "60"
/// @DnDArgument : "units" "time_source_units_frames"
/// @DnDArgument : "callback" "_destroy_popup"
var ts_destroy_popup = time_source_create(time_source_game, 60, time_source_units_frames, _destroy_popup, [], 1, time_source_expire_after);

/// @DnDAction : YoYo Games.Time.Time_Source_Start
/// @DnDVersion : 1
/// @DnDHash : 2BD5F90F
/// @DnDArgument : "idx" "ts_destroy_popup"
time_source_start(ts_destroy_popup);