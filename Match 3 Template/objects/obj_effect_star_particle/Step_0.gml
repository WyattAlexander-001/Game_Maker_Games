/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 745D9E44
/// @DnDComment : If the speed of this object has reached zero...
/// @DnDArgument : "var" "speed"
/// @DnDArgument : "op" "3"
if(speed <= 0)
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Image_Alpha
	/// @DnDVersion : 1
	/// @DnDHash : 31CB18DD
	/// @DnDComment : Set the instance alpha to reduce by 0.05 every frame$(13_10)so that the object will fade out.
	/// @DnDParent : 745D9E44
	/// @DnDArgument : "alpha" "-0.05"
	/// @DnDArgument : "alpha_relative" "1"
	image_alpha += -0.05;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6208E32C
	/// @DnDComment : If the image_alpha has reached 0...
	/// @DnDParent : 745D9E44
	/// @DnDArgument : "var" "image_alpha"
	/// @DnDArgument : "op" "3"
	if(image_alpha <= 0)
	{
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 5B801CC9
		/// @DnDComment : Destroy this instance.
		/// @DnDParent : 6208E32C
		instance_destroy();
	}
}