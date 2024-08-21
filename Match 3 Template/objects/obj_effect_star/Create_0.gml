/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
/// @DnDVersion : 1
/// @DnDHash : 60B7C837
/// @DnDComment : Set the animation speed to 0 so that this sprite doesn't animate.
/// @DnDArgument : "speed" "0"
image_speed = 0;

/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 37653529
/// @DnDComment : Set the frame of this sprite to 1 so it always shows the yellow star.
/// @DnDArgument : "imageind" "1"
/// @DnDArgument : "spriteind" "spr_hud_star"
/// @DnDSaveInfo : "spriteind" "spr_hud_star"
sprite_index = spr_hud_star;
image_index = 1;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4EB4EA2B
/// @DnDComment : Create a new variable called animation_phase and set it to 0.$(13_10)$(13_10)We change this in the step event to make the star animation$(13_10)happen on the HUD.
/// @DnDArgument : "var" "animation_phase"
animation_phase = 0;

/// @DnDAction : YoYo Games.Instances.Sprite_Image_Alpha
/// @DnDVersion : 1
/// @DnDHash : 5E35F570
/// @DnDComment : Set the instance alpha to 0 so that it will be invisible.
/// @DnDArgument : "alpha" "0"
image_alpha = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7D3151D1
/// @DnDComment : Set the number of this star to 0 - this will be manipulated by obj_controller.
/// @DnDArgument : "var" "my_star_number"
my_star_number = 0;

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 4ECA9F88
/// @DnDComment : Play a sound effect when the star pops up.
/// @DnDArgument : "soundid" "snd_star_award_in_game"
/// @DnDSaveInfo : "soundid" "snd_star_award_in_game"
audio_play_sound(snd_star_award_in_game, 0, 0, 1.0, undefined, 1.0);