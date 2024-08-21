/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 15FBEB9C
/// @DnDArgument : "funcName" "_no_matches"
/// @DnDArgument : "temp" "1"
var _no_matches = function() 
{
	/// @DnDAction : YoYo Games.Common.Apply_To
	/// @DnDVersion : 1
	/// @DnDHash : 242CBDDE
	/// @DnDComment : Apply the following code to all instances of obj_matching_piece
	/// @DnDApplyTo : {obj_matching_piece}
	/// @DnDParent : 15FBEB9C
	with(obj_matching_piece) {
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 1F9A1E90
		/// @DnDComment : Create an instance of obj_effect_game_won at the current$(13_10)position. This is the object that looks like a regular piece$(13_10)but is "falling" from the board (It doesn't mean the player has$(13_10)actually won).
		/// @DnDParent : 242CBDDE
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "var" "_effect_piece"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "objectid" "obj_effect_game_won"
		/// @DnDArgument : "layer" ""Pieces""
		/// @DnDSaveInfo : "objectid" "obj_effect_game_won"
		var _effect_piece = instance_create_layer(x + 0, y + 0, "Pieces", obj_effect_game_won);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6F21DBAB
		/// @DnDComment : Set the image_index of the falling piece to match that of $(13_10)the current piece so they will have the same appearance.
		/// @DnDParent : 242CBDDE
		/// @DnDArgument : "expr" "image_index"
		/// @DnDArgument : "var" "_effect_piece.image_index"
		_effect_piece.image_index = image_index;
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 7EB5F631
		/// @DnDComment : Destroy the instances of obj_matching_piece
		/// @DnDParent : 242CBDDE
		instance_destroy();
	}

	/// @DnDAction : YoYo Games.Common.Apply_To
	/// @DnDVersion : 1
	/// @DnDHash : 3F286182
	/// @DnDComment : Apply the following code to obj_controller
	/// @DnDApplyTo : {obj_controller}
	/// @DnDParent : 15FBEB9C
	with(obj_controller) {
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 0CA64298
		/// @DnDComment : Set Alarm[3] to 0.$(13_10)$(13_10)Alarm[3] repopulates the board with pieces.
		/// @DnDParent : 3F286182
		/// @DnDArgument : "steps" "60"
		/// @DnDArgument : "alarm" "3"
		alarm_set(3, 60);
	}

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 43E41397
	/// @DnDComment : Destroy the message
	/// @DnDParent : 15FBEB9C
	instance_destroy();

	/// @DnDAction : YoYo Games.Common.Apply_To
	/// @DnDVersion : 1
	/// @DnDHash : 7432DDBF
	/// @DnDApplyTo : {obj_no_valid_matches_title}
	/// @DnDParent : 15FBEB9C
	with(obj_no_valid_matches_title) {
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 3C8329BF
		/// @DnDComment : Destroy the message
		/// @DnDParent : 7432DDBF
		instance_destroy();
	}
}

/// @DnDAction : YoYo Games.Time.Time_Source_Create
/// @DnDVersion : 1
/// @DnDHash : 0928DDBE
/// @DnDArgument : "idx" "_ts_no_matches"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "parent" "time_source_game"
/// @DnDArgument : "period" "180"
/// @DnDArgument : "units" "time_source_units_frames"
/// @DnDArgument : "callback" "_no_matches"
var _ts_no_matches = time_source_create(time_source_game, 180, time_source_units_frames, _no_matches, [], 1, time_source_expire_after);

/// @DnDAction : YoYo Games.Time.Time_Source_Start
/// @DnDVersion : 1
/// @DnDHash : 6B81251E
/// @DnDArgument : "idx" "_ts_no_matches"
time_source_start(_ts_no_matches);