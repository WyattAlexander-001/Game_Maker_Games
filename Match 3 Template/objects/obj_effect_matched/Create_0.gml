/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
/// @DnDVersion : 1
/// @DnDHash : 43E0ECCF
/// @DnDComment : Set the animation speed to zero so this doesn't$(13_10)cycle through all the frames of its sprite. It is$(13_10)set to have the correct image_index in the "destroy"$(13_10)event of obj_matching_piece
/// @DnDArgument : "speed" "0"
image_speed = 0;

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 1E51D86D
/// @DnDArgument : "funcName" "_matched_effect"
/// @DnDArgument : "temp" "1"
var _matched_effect = function() 
{
	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 431D23E0
	/// @DnDComment : Only execute the following code if obj_game_over_win does$(13_10)NOT exist (which means this object has been destroyed because$(13_10)a match was created, not because the player won the game).
	/// @DnDParent : 1E51D86D
	/// @DnDArgument : "obj" "obj_game_over_win"
	/// @DnDArgument : "not" "1"
	/// @DnDSaveInfo : "obj" "obj_game_over_win"
	var l431D23E0_0 = false;
	l431D23E0_0 = instance_exists(obj_game_over_win);
	if(!l431D23E0_0)
	{
		/// @DnDAction : YoYo Games.Switch.Switch
		/// @DnDVersion : 1
		/// @DnDHash : 6C8E734E
		/// @DnDComment : Use a switch statement to perform different actions$(13_10)based on the image_index of this object
		/// @DnDParent : 431D23E0
		/// @DnDArgument : "expr" "image_index"
		var l6C8E734E_0 = image_index;
		switch(l6C8E734E_0)
		{
			/// @DnDAction : YoYo Games.Switch.Case
			/// @DnDVersion : 1
			/// @DnDHash : 7188AA9C
			/// @DnDComment : If the image_index is 0...
			/// @DnDParent : 6C8E734E
			case 0:
				/// @DnDAction : YoYo Games.Common.Temp_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 1B6BE9CC
				/// @DnDComment : Declare a temporary variable called _my_color$(13_10)and set its value to c_red.
				/// @DnDParent : 7188AA9C
				/// @DnDArgument : "var" "_my_color"
				/// @DnDArgument : "value" "c_red"
				var _my_color = c_red;
				break;
		
			/// @DnDAction : YoYo Games.Switch.Case
			/// @DnDVersion : 1
			/// @DnDHash : 0AB7BF71
			/// @DnDComment : If the image_index is 1...
			/// @DnDParent : 6C8E734E
			/// @DnDArgument : "const" "1"
			case 1:
				/// @DnDAction : YoYo Games.Common.Temp_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 4F5240FD
				/// @DnDComment : Declare a temporary variable called _my_color$(13_10)and set its value to c_yellow.
				/// @DnDParent : 0AB7BF71
				/// @DnDArgument : "var" "_my_color"
				/// @DnDArgument : "value" "c_yellow"
				var _my_color = c_yellow;
				break;
		
			/// @DnDAction : YoYo Games.Switch.Case
			/// @DnDVersion : 1
			/// @DnDHash : 76B54DFC
			/// @DnDComment : If the image_index is 2...
			/// @DnDParent : 6C8E734E
			/// @DnDArgument : "const" "2"
			case 2:
				/// @DnDAction : YoYo Games.Common.Temp_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 004262B5
				/// @DnDComment : Declare a temporary variable called _my_color$(13_10)and set its value to c_green.
				/// @DnDParent : 76B54DFC
				/// @DnDArgument : "var" "_my_color"
				/// @DnDArgument : "value" "c_green"
				var _my_color = c_green;
				break;
		
			/// @DnDAction : YoYo Games.Switch.Case
			/// @DnDVersion : 1
			/// @DnDHash : 538134F7
			/// @DnDComment : If the image_index is 3...
			/// @DnDParent : 6C8E734E
			/// @DnDArgument : "const" "3"
			case 3:
				/// @DnDAction : YoYo Games.Common.Temp_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 0AE09032
				/// @DnDComment : Declare a temporary variable called _my_color$(13_10)and set its value to c_aqua.
				/// @DnDParent : 538134F7
				/// @DnDArgument : "var" "_my_color"
				/// @DnDArgument : "value" "c_aqua"
				var _my_color = c_aqua;
				break;
		
			/// @DnDAction : YoYo Games.Switch.Case
			/// @DnDVersion : 1
			/// @DnDHash : 4676A4C5
			/// @DnDComment : If the image_index is 4...
			/// @DnDParent : 6C8E734E
			/// @DnDArgument : "const" "4"
			case 4:
				/// @DnDAction : YoYo Games.Common.Temp_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 42065577
				/// @DnDComment : Declare a temporary variable called _my_color$(13_10)and set its value to c_purple.
				/// @DnDParent : 4676A4C5
				/// @DnDArgument : "var" "_my_color"
				/// @DnDArgument : "value" "c_purple"
				var _my_color = c_purple;
				break;
		
			/// @DnDAction : YoYo Games.Switch.Case
			/// @DnDVersion : 1
			/// @DnDHash : 06586FCC
			/// @DnDComment : If the image_index is 5...
			/// @DnDParent : 6C8E734E
			/// @DnDArgument : "const" "5"
			case 5:
				/// @DnDAction : YoYo Games.Common.Temp_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 20D7261B
				/// @DnDComment : Declare a temporary variable called _my_color$(13_10)and set its value to c_olive.
				/// @DnDParent : 06586FCC
				/// @DnDArgument : "var" "_my_color"
				/// @DnDArgument : "value" "c_olive"
				var _my_color = c_olive;
				break;
		
			/// @DnDAction : YoYo Games.Switch.Default
			/// @DnDVersion : 1
			/// @DnDHash : 1640F1FB
			/// @DnDComment : If the image_index is not one of the values above...
			/// @DnDParent : 6C8E734E
			default:
				/// @DnDAction : YoYo Games.Common.Temp_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 3F81F710
				/// @DnDComment : Declare a temporary variable called _my_color$(13_10)and set its value to c_white.
				/// @DnDParent : 1640F1FB
				/// @DnDArgument : "var" "_my_color"
				/// @DnDArgument : "value" "c_white"
				var _my_color = c_white;
				break;
		}
	
		/// @DnDAction : YoYo Games.Particles.Effect
		/// @DnDVersion : 1
		/// @DnDHash : 79C3C8E4
		/// @DnDComment : Create a particle effect below the current object at$(13_10)position 0,0 (relative to this object).$(13_10)$(13_10)Notice the color of the effect is set to the _my_color$(13_10)temporary variable we declared in the switch statement$(13_10)above.$(13_10)$(13_10)This will make the particle effect color the same as$(13_10)the color of the sprite.
		/// @DnDParent : 431D23E0
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "type" "3"
		/// @DnDArgument : "size" "1"
		/// @DnDArgument : "color" "_my_color"
		effect_create_below(3, x + 0, y + 0, 1, _my_color & $ffffff);
	}
}

/// @DnDAction : YoYo Games.Time.Time_Source_Create
/// @DnDVersion : 1
/// @DnDHash : 2E443E1A
/// @DnDArgument : "idx" "_ts_matched_effect"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "parent" "time_source_game"
/// @DnDArgument : "period" "1"
/// @DnDArgument : "units" "time_source_units_frames"
/// @DnDArgument : "callback" "_matched_effect"
var _ts_matched_effect = time_source_create(time_source_game, 1, time_source_units_frames, _matched_effect, [], 1, time_source_expire_after);

/// @DnDAction : YoYo Games.Time.Time_Source_Start
/// @DnDVersion : 1
/// @DnDHash : 02242C66
/// @DnDArgument : "idx" "_ts_matched_effect"
time_source_start(_ts_matched_effect);