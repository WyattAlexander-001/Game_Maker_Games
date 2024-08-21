/// @DnDAction : YoYo Games.Instances.Sprite_Scale
/// @DnDVersion : 1
/// @DnDHash : 7B9F526A
/// @DnDComment : Gradually increase in size
/// @DnDArgument : "xscale" "0.1"
/// @DnDArgument : "xscale_relative" "1"
/// @DnDArgument : "yscale" "0.1"
/// @DnDArgument : "yscale_relative" "1"
image_xscale += 0.1;
image_yscale += 0.1;

/// @DnDAction : YoYo Games.Instances.Sprite_Image_Alpha
/// @DnDVersion : 1
/// @DnDHash : 64645CFB
/// @DnDComment : Gradually decrease in opacity
/// @DnDArgument : "alpha" "-0.1"
/// @DnDArgument : "alpha_relative" "1"
image_alpha += -0.1;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4D938E9C
/// @DnDComment : If the object's image_alpha value, being decreased above,$(13_10)has reached 0...
/// @DnDArgument : "var" "image_alpha"
/// @DnDArgument : "op" "3"
if(image_alpha <= 0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 052B6CB3
	/// @DnDComment : Destroy the object
	/// @DnDParent : 4D938E9C
	instance_destroy();
}