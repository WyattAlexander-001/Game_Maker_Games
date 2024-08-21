/// @DnDAction : YoYo Games.Random.Randomize
/// @DnDVersion : 1
/// @DnDHash : 52DAD58D
/// @DnDComment : Generate a new random seed so we definately don't get the same objectives between runs.
randomize();

/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 1E360644
/// @DnDComment : We have a different number and types of objectives for each level.$(13_10)So this switch statement separates those setups.
/// @DnDArgument : "expr" "room"
var l1E360644_0 = room;
switch(l1E360644_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 2BE31DC9
	/// @DnDComment : If we are setting objectives for level 1...
	/// @DnDParent : 1E360644
	/// @DnDArgument : "const" "rm_level_1"
	case rm_level_1:
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0F0CC07D
		/// @DnDComment : Set first objective type to 0, 1, 2 or 3.
		/// @DnDParent : 2BE31DC9
		/// @DnDArgument : "expr" "irandom_range(0, 3)"
		/// @DnDArgument : "var" "type_0"
		type_0 = irandom_range(0, 3);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3A5ED91F
		/// @DnDComment : Disable second objective.
		/// @DnDParent : 2BE31DC9
		/// @DnDArgument : "expr" "-1"
		/// @DnDArgument : "var" "type_1"
		type_1 = -1;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 426C7D0B
		/// @DnDComment : Disable third objective.
		/// @DnDParent : 2BE31DC9
		/// @DnDArgument : "expr" "-1"
		/// @DnDArgument : "var" "type_2"
		type_2 = -1;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7A049810
		/// @DnDComment : Set objective amounts to values between 3 and 6.$(13_10)Unless they're disabled, in which case just set to -1.
		/// @DnDInput : 3
		/// @DnDParent : 2BE31DC9
		/// @DnDArgument : "expr" "irandom_range(3, 6)"
		/// @DnDArgument : "expr_1" "-1"
		/// @DnDArgument : "expr_2" "-1"
		/// @DnDArgument : "var" "amount_0"
		/// @DnDArgument : "var_1" "amount_1"
		/// @DnDArgument : "var_2" "amount_2"
		amount_0 = irandom_range(3, 6);
		amount_1 = -1;
		amount_2 = -1;
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 0931439F
	/// @DnDComment : If we are setting objectives for level 2...
	/// @DnDParent : 1E360644
	/// @DnDArgument : "const" "rm_level_2"
	case rm_level_2:
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1C55E2A1
		/// @DnDComment : Set first objective type to 0, 1, 2 or 3.
		/// @DnDParent : 0931439F
		/// @DnDArgument : "expr" "irandom_range(0, 3)"
		/// @DnDArgument : "var" "type_0"
		type_0 = irandom_range(0, 3);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2F033200
		/// @DnDComment : Set second objective type to 4 or 5.
		/// @DnDParent : 0931439F
		/// @DnDArgument : "expr" "irandom_range(4, 5)"
		/// @DnDArgument : "var" "type_1"
		type_1 = irandom_range(4, 5);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1B67D66B
		/// @DnDComment : Disable third objectibe.
		/// @DnDParent : 0931439F
		/// @DnDArgument : "expr" "-1"
		/// @DnDArgument : "var" "type_2"
		type_2 = -1;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4010556C
		/// @DnDComment : Set objective amounts to values between 3 and 6.$(13_10)Unless they're disabled, in which case just set to -1.
		/// @DnDInput : 3
		/// @DnDParent : 0931439F
		/// @DnDArgument : "expr" "irandom_range(3, 6)"
		/// @DnDArgument : "expr_1" "irandom_range(3, 6)"
		/// @DnDArgument : "expr_2" "-1"
		/// @DnDArgument : "var" "amount_0"
		/// @DnDArgument : "var_1" "amount_1"
		/// @DnDArgument : "var_2" "amount_2"
		amount_0 = irandom_range(3, 6);
		amount_1 = irandom_range(3, 6);
		amount_2 = -1;
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 2FAA911E
	/// @DnDComment : If we are setting objectives for level 3...
	/// @DnDParent : 1E360644
	/// @DnDArgument : "const" "rm_level_3"
	case rm_level_3:
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0A0EE26B
		/// @DnDComment : Set first objective type to 0, 1, 2 or 3.
		/// @DnDParent : 2FAA911E
		/// @DnDArgument : "expr" "irandom_range(0, 3)"
		/// @DnDArgument : "var" "type_0"
		type_0 = irandom_range(0, 3);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1A20BCD3
		/// @DnDComment : Set second objective type to 4 or 5.
		/// @DnDParent : 2FAA911E
		/// @DnDArgument : "expr" "irandom_range(4, 5)"
		/// @DnDArgument : "var" "type_1"
		type_1 = irandom_range(4, 5);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4058745C
		/// @DnDComment : Set third objective type to 6 or 7.
		/// @DnDParent : 2FAA911E
		/// @DnDArgument : "expr" "irandom_range(6, 7)"
		/// @DnDArgument : "var" "type_2"
		type_2 = irandom_range(6, 7);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3FE9B029
		/// @DnDComment : Set objective amounts to values between 3 and 6.$(13_10)Level 3 has all objectives enabled, so there's nothing to disable here.
		/// @DnDInput : 3
		/// @DnDParent : 2FAA911E
		/// @DnDArgument : "expr" "irandom_range(3, 6)"
		/// @DnDArgument : "expr_1" "irandom_range(3, 6)"
		/// @DnDArgument : "expr_2" "irandom_range(3, 6)"
		/// @DnDArgument : "var" "amount_0"
		/// @DnDArgument : "var_1" "amount_1"
		/// @DnDArgument : "var_2" "amount_2"
		amount_0 = irandom_range(3, 6);
		amount_1 = irandom_range(3, 6);
		amount_2 = irandom_range(3, 6);
		break;
}