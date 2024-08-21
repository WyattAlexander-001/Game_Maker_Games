/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
/// @DnDVersion : 1
/// @DnDHash : 57D8A995
/// @DnDComment : Set the animation speed to 0 so that this sprite doesn't animate.
/// @DnDArgument : "speed" "0"
image_speed = 0;

/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 2C10F76A
/// @DnDComment : Set the frame of this sprite to 1 so it always shows the yellow star.
/// @DnDArgument : "imageind" "1"
/// @DnDArgument : "spriteind" "spr_hud_star"
/// @DnDSaveInfo : "spriteind" "spr_hud_star"
sprite_index = spr_hud_star;
image_index = 1;

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 62F0336D
/// @DnDComment : Set the image_xscale to a random number between 0.1 and 0.4$(13_10)to make the image smaller, but varied in size.
/// @DnDArgument : "var" "image_xscale"
/// @DnDArgument : "min" "0.1"
/// @DnDArgument : "max" "0.4"
image_xscale = (random_range(0.1, 0.4));

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 37ACB6D6
/// @DnDComment : Set image_yscale to the same value as image_xscale so the image$(13_10)stays at a 1:1 ratio.
/// @DnDArgument : "expr" "image_xscale"
/// @DnDArgument : "var" "image_yscale"
image_yscale = image_xscale;

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 1DF99C81
/// @DnDComment : Set the direction to a random angle between 0 and 360.
/// @DnDArgument : "var" "direction"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "max" "359"
direction = floor(random_range(0, 359 + 1));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 4A7B9B79
/// @DnDComment : Set the speed to a random number between 4 and 5.
/// @DnDArgument : "var" "speed"
/// @DnDArgument : "min" "4"
/// @DnDArgument : "max" "5"
speed = (random_range(4, 5));

/// @DnDAction : YoYo Games.Movement.Set_Friction
/// @DnDVersion : 1
/// @DnDHash : 67B19A9E
/// @DnDComment : Set the friction to 0.1, this will slow down the instance$(13_10)every step until its speed reaches 0.
/// @DnDArgument : "friction" "0.1"
friction = 0.1;