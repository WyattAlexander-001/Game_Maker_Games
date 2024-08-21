/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1A3D6B2D
/// @DnDComment : If this instance was destroyed because it was part of a matching set...
/// @DnDArgument : "var" "currently_matched"
/// @DnDArgument : "op" "2"
if(currently_matched > 0)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 40CB48D1
	/// @DnDComment : When this piece is destroyed, create an instance of$(13_10)"obj_effect_matched" in its place, which will animate$(13_10)the match the player just made.$(13_10)$(13_10)We assign its id to a temporary variable called _effect.
	/// @DnDParent : 1A3D6B2D
	/// @DnDArgument : "xpos" "50"
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos" "50"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "var" "_effect"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "objectid" "obj_effect_matched"
	/// @DnDArgument : "layer" ""Pieces""
	/// @DnDSaveInfo : "objectid" "obj_effect_matched"
	var _effect = instance_create_layer(x + 50, y + 50, "Pieces", obj_effect_matched);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 07079DE2
	/// @DnDComment : Set the image_index of the effect we just created to be $(13_10)the same as this piece, so it animates the right piece$(13_10)being destroyed.
	/// @DnDParent : 1A3D6B2D
	/// @DnDArgument : "expr" "image_index"
	/// @DnDArgument : "var" "_effect.image_index"
	_effect.image_index = image_index;
}