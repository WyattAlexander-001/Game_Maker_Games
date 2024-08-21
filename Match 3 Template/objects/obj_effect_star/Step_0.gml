/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7352C228
/// @DnDComment : If the animation_phase variable is 0...
/// @DnDArgument : "var" "animation_phase"
if(animation_phase == 0)
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Scale
	/// @DnDVersion : 1
	/// @DnDHash : 42E7E369
	/// @DnDComment : Make the instance grow in size slightly every frame.
	/// @DnDParent : 7352C228
	/// @DnDArgument : "xscale" "0.025"
	/// @DnDArgument : "xscale_relative" "1"
	/// @DnDArgument : "yscale" "0.025"
	/// @DnDArgument : "yscale_relative" "1"
	image_xscale += 0.025;
	image_yscale += 0.025;

	/// @DnDAction : YoYo Games.Instances.Sprite_Image_Alpha
	/// @DnDVersion : 1
	/// @DnDHash : 5C3D0CCB
	/// @DnDComment : Make the instance alpha increase every frame.
	/// @DnDParent : 7352C228
	/// @DnDArgument : "alpha" "0.05"
	/// @DnDArgument : "alpha_relative" "1"
	image_alpha += 0.05;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 31748FE8
	/// @DnDComment : If the image_alpha has reached 1 and therefore the object is fully visible...
	/// @DnDParent : 7352C228
	/// @DnDArgument : "var" "image_alpha"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "1"
	if(image_alpha >= 1)
	{
		/// @DnDAction : YoYo Games.Particles.Effect
		/// @DnDVersion : 1
		/// @DnDHash : 5090EF57
		/// @DnDComment : Create an expanding ring effect on this object.
		/// @DnDParent : 31748FE8
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "type" "1"
		/// @DnDArgument : "where" "1"
		/// @DnDArgument : "size" "2"
		/// @DnDArgument : "color" "$FF00FFFF"
		effect_create_above(1, x + 0, y + 0, 2, $FF00FFFF & $ffffff);
	
		/// @DnDAction : YoYo Games.Loops.Repeat
		/// @DnDVersion : 1
		/// @DnDHash : 10D14609
		/// @DnDComment : Repeat the following block of code 12 times (to create 12 particle instances).
		/// @DnDParent : 31748FE8
		/// @DnDArgument : "times" "12"
		repeat(12)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 7BE1E1CB
			/// @DnDComment : Create instances of the object obj_effect_star_particle$(13_10)at this instance's x and y position.
			/// @DnDParent : 10D14609
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "objectid" "obj_effect_star_particle"
			/// @DnDArgument : "layer" ""UIElements2""
			/// @DnDSaveInfo : "objectid" "obj_effect_star_particle"
			instance_create_layer(x + 0, y + 0, "UIElements2", obj_effect_star_particle);
		}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 65EFE20D
		/// @DnDComment : Set the animation_phase variable to 1.
		/// @DnDParent : 31748FE8
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "animation_phase"
		animation_phase = 1;
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 1A27EA19
/// @DnDComment : If the animation_phase variable is not 0...
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6E66D9F5
	/// @DnDComment : Make the image_xscale approach 1 again using the lerp()$(13_10)function to create a smooth animation.
	/// @DnDParent : 1A27EA19
	/// @DnDArgument : "expr" "lerp(image_xscale,1,0.25)"
	/// @DnDArgument : "var" "image_xscale"
	image_xscale = lerp(image_xscale,1,0.25);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 57964C8D
	/// @DnDComment : Set the image_yscale to the same as the image_xscale.
	/// @DnDParent : 1A27EA19
	/// @DnDArgument : "expr" "image_xscale"
	/// @DnDArgument : "var" "image_yscale"
	image_yscale = image_xscale;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5007BDE9
	/// @DnDComment : When the image_xscale has nearly hit 1...$(13_10)$(13_10)We're checking it "nearly" hits because using lerp$(13_10)means the image_xscale variable will be left with a small$(13_10)number after the decimal point.
	/// @DnDParent : 1A27EA19
	/// @DnDArgument : "var" "image_xscale"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "1.05"
	if(image_xscale < 1.05)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5EA93F6B
		/// @DnDComment : Set star_done[n] for obj_controller to 2, where n$(13_10)is the same as the my_star_number variable for this instance.$(13_10)This tells the controller to draw the star filled in on the HUD.
		/// @DnDParent : 5007BDE9
		/// @DnDArgument : "expr" "2"
		/// @DnDArgument : "var" "obj_controller.star_done[my_star_number]"
		obj_controller.star_done[my_star_number] = 2;
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 50DD38E2
		/// @DnDComment : Destroy this instance.
		/// @DnDParent : 5007BDE9
		instance_destroy();
	}
}