/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
/// @DnDVersion : 1
/// @DnDHash : 43E0ECCF
/// @DnDComment : Set the animation speed to zero so this object doesn't$(13_10)cycle through all the frames of its sprite. It is$(13_10)set to have the correct image_index in the "destroy"$(13_10)event of obj_matching_piece
/// @DnDArgument : "speed" "0"
image_speed = 0;

/// @DnDAction : YoYo Games.Movement.Set_Gravity_Direction
/// @DnDVersion : 1
/// @DnDHash : 539C888F
/// @DnDComment : Set the gravity direction to 270, which will make$(13_10)the object fall downwards when the gravity force$(13_10)is applied.
/// @DnDArgument : "direction" "270"
gravity_direction = 270;

/// @DnDAction : YoYo Games.Movement.Set_Gravity_Force
/// @DnDVersion : 1
/// @DnDHash : 1804CF84
/// @DnDComment : Set the gravity force to 1 so the object will start$(13_10)to fall.
gravity = 1;

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 23C2C472
/// @DnDComment : Set the hspeed (horizontal speed) to a random number$(13_10)between -8 and 8 so the object will fall a little$(13_10)bit sideways.
/// @DnDArgument : "var" "hspeed"
/// @DnDArgument : "min" "-8"
/// @DnDArgument : "max" "8"
hspeed = (random_range(-8, 8));