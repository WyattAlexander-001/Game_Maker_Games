/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 7C9DF967
/// @DnDInput : 4
/// @DnDArgument : "expr" "instance_exists(obj_game_pause)"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "expr_1" "instance_exists(obj_game_over_lose)"
/// @DnDArgument : "not_1" "1"
/// @DnDArgument : "expr_2" "instance_exists(obj_game_over_win)"
/// @DnDArgument : "not_2" "1"
/// @DnDArgument : "expr_3" "instance_exists(obj_no_valid_matches)"
/// @DnDArgument : "not_3" "1"
if(!(instance_exists(obj_game_pause)) && !(instance_exists(obj_game_over_lose)) && !(instance_exists(obj_game_over_win)) && !(instance_exists(obj_no_valid_matches)))
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 4D258E40
	/// @DnDComment : When the left mouse button is clicked on top of$(13_10)this object, set the image_index to 1 to show that$(13_10)the button is being clicked.
	/// @DnDParent : 7C9DF967
	/// @DnDArgument : "imageind" "1"
	/// @DnDArgument : "spriteind" "sprite_index"
	sprite_index = sprite_index;
	image_index = 1;
}