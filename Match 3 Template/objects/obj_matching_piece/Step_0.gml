/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0AE58692
/// @DnDComment : Check if the piece's x position is less than its target_x position,$(13_10)for smooth animations when the player swaps pieces.
/// @DnDArgument : "var" "x"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "target_x"
if(x < target_x)
{
	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 41269717
	/// @DnDComment : Move towards the target_x position by 12 pixels.
	/// @DnDParent : 0AE58692
	/// @DnDArgument : "x" "10"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "0"
	/// @DnDArgument : "y_relative" "1"
	x += 10;
	y += 0;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4A5F1B8B
/// @DnDComment : Check if the piece's x position is greater than its target_x position,$(13_10)for smooth animations when the player swaps pieces.
/// @DnDArgument : "var" "x"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "target_x"
if(x > target_x)
{
	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 3E9144C8
	/// @DnDComment : Move towards the target_x position by 12 pixels.
	/// @DnDParent : 4A5F1B8B
	/// @DnDArgument : "x" "-10"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "0"
	/// @DnDArgument : "y_relative" "1"
	x += -10;
	y += 0;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 31ADF236
/// @DnDComment : Check if the piece's y position is less than its target_y position,$(13_10)for smooth animations when the player swaps pieces.
/// @DnDArgument : "var" "y"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "target_y"
if(y < target_y)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 13A56001
	/// @DnDComment : The object is falling, make draw_squish approach 0.8$(13_10)using the lerp function, which helps us to create smooth$(13_10)animations.
	/// @DnDParent : 31ADF236
	/// @DnDArgument : "expr" "lerp(draw_squish,0.8,0.2)"
	/// @DnDArgument : "var" "draw_squish"
	draw_squish = lerp(draw_squish,0.8,0.2);

	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 0703303C
	/// @DnDComment : Move towards the target_y position by 12 pixels.
	/// @DnDParent : 31ADF236
	/// @DnDArgument : "x" "0"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "10"
	/// @DnDArgument : "y_relative" "1"
	x += 0;
	y += 10;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 63B2E9D0
	/// @DnDComment : If y was less than target_y, but it has now$(13_10)reached its target...
	/// @DnDParent : 31ADF236
	/// @DnDArgument : "var" "y"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "target_y"
	if(y >= target_y)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0A0A6244
		/// @DnDComment : Set the variable draw_squish to 1.25,$(13_10)when we draw the instance in the draw event$(13_10)this will make it squish as it lands in place.
		/// @DnDParent : 63B2E9D0
		/// @DnDArgument : "expr" "1.25"
		/// @DnDArgument : "var" "draw_squish_target"
		draw_squish_target = 1.25;
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4DC92106
/// @DnDComment : Check if the piece's y position is greater than its target_y position,$(13_10)for smooth animations when the player swaps pieces.
/// @DnDArgument : "var" "y"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "target_y"
if(y > target_y)
{
	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 2A5ABD15
	/// @DnDComment : Move towards the target_y position by 12 pixels.
	/// @DnDParent : 4DC92106
	/// @DnDArgument : "x" "0"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "-10"
	/// @DnDArgument : "y_relative" "1"
	x += 0;
	y += -10;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6D0BC09A
/// @DnDComment : If the variable draw_y_offset is less than 0...
/// @DnDArgument : "var" "draw_y_offset"
/// @DnDArgument : "op" "1"
if(draw_y_offset < 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 24CFCCC7
	/// @DnDComment : Add 10 to draw_y_offset so that it$(13_10)approaches 0.
	/// @DnDParent : 6D0BC09A
	/// @DnDArgument : "expr" "10"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "draw_y_offset"
	draw_y_offset += 10;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3F712BB9
/// @DnDComment : If the alpha of this instance is below 1...
/// @DnDArgument : "var" "image_alpha"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "1"
if(image_alpha < 1)
{
	/// @DnDAction : YoYo Games.Instances.Sprite_Image_Alpha
	/// @DnDVersion : 1
	/// @DnDHash : 78CF470A
	/// @DnDComment : Add 0.1 to the alpha of this instance$(13_10)until it reaches 1 and the instance$(13_10)becomes fully opaque.
	/// @DnDParent : 3F712BB9
	/// @DnDArgument : "alpha" "0.1"
	/// @DnDArgument : "alpha_relative" "1"
	image_alpha += 0.1;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 00735EA5
/// @DnDComment : If the variable draw_squish is not equal to 1...
/// @DnDArgument : "var" "draw_squish"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "draw_squish_target"
if(!(draw_squish == draw_squish_target))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6F5B19E7
	/// @DnDComment : Slowly return draw_squish to its target by$(13_10)using the lerp function, which helps$(13_10)to create smooth animations.
	/// @DnDParent : 00735EA5
	/// @DnDArgument : "expr" "lerp(draw_squish,draw_squish_target,0.2)"
	/// @DnDArgument : "var" "draw_squish"
	draw_squish = lerp(draw_squish,draw_squish_target,0.2);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 75FFBD51
	/// @DnDComment : If draw_squish (nearly) reaches its target...$(13_10)$(13_10)We're calculating if it "nearly" reaches the target because$(13_10)the lerp function we're using for smooth animations often$(13_10)sets variables to very tiny fractions of values rather than$(13_10)the exact intended target.
	/// @DnDParent : 00735EA5
	/// @DnDArgument : "var" "abs(draw_squish-draw_squish_target)"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "0.1"
	if(abs(draw_squish-draw_squish_target) < 0.1)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2B6ADE73
		/// @DnDComment : if draw_squish (nearly) reaches draw_squish_target, always set$(13_10)the target back to 1. This resets the squishing animation$(13_10)when an object hits its target position.
		/// @DnDParent : 75FFBD51
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "draw_squish_target"
		draw_squish_target = 1;
	}
}