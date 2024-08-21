/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 537C2E50
/// @DnDArgument : "x" "x - ((draw_squish-1)*sprite_width)/2"
/// @DnDArgument : "y" "y + (sprite_height - (sprite_height*(1/draw_squish))) + draw_y_offset"
/// @DnDArgument : "xscale" "draw_squish"
/// @DnDArgument : "yscale" "1/draw_squish"
/// @DnDArgument : "alpha" "image_alpha"
/// @DnDArgument : "sprite" "spr_matching_pieces"
/// @DnDArgument : "frame" "image_index"
/// @DnDSaveInfo : "sprite" "spr_matching_pieces"
draw_sprite_ext(spr_matching_pieces, image_index, x - ((draw_squish-1)*sprite_width)/2, y + (sprite_height - (sprite_height*(1/draw_squish))) + draw_y_offset, draw_squish, 1/draw_squish, 0, $FFFFFF & $ffffff, image_alpha);