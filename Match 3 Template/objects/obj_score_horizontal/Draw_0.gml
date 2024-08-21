/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 579FD6F5
/// @DnDComment : Draw panel sprite.
draw_self();

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 1747B372
/// @DnDComment : Draw the empty/background score bar.
/// @DnDArgument : "x" "150"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "65"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "xscale" "0.9"
/// @DnDArgument : "sprite" "spr_score_bar_empty"
/// @DnDSaveInfo : "sprite" "spr_score_bar_empty"
draw_sprite_ext(spr_score_bar_empty, 0, x + 150, y + 65, 0.9, 1, 0, $FFFFFF & $ffffff, 1);

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 2CBA3E35
/// @DnDComment : Draw the score bar "filling".$(13_10)$(13_10)This is done use Scale X to stretch it.
/// @DnDArgument : "x" "150"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "65"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "xscale" "0.9 * min(1, global.score_total / global.score_target)"
/// @DnDArgument : "sprite" "spr_score_bar_full"
/// @DnDSaveInfo : "sprite" "spr_score_bar_full"
draw_sprite_ext(spr_score_bar_full, 0, x + 150, y + 65, 0.9 * min(1, global.score_total / global.score_target), 1, 0, $FFFFFF & $ffffff, 1);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 42A746AE
/// @DnDComment : Set the font for drawing text to font_main
/// @DnDArgument : "font" "fnt_small_text"
/// @DnDSaveInfo : "font" "fnt_small_text"
draw_set_font(fnt_small_text);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 14E41086
/// @DnDComment : Change text alignment.
/// @DnDArgument : "halign" "fa_center"
/// @DnDArgument : "valign" "fa_middle"
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 69B771D3
/// @DnDComment : Change drawing color.
/// @DnDArgument : "color" "$FF093F68"
draw_set_colour($FF093F68 & $ffffff);
var l69B771D3_0=($FF093F68 >> 24);
draw_set_alpha(l69B771D3_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 715D8153
/// @DnDComment : Draw the moves remaining icon.
/// @DnDArgument : "x" "50"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "75"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "xscale" "0.5"
/// @DnDArgument : "yscale" "0.5"
/// @DnDArgument : "sprite" "spr_moves_icon"
/// @DnDSaveInfo : "sprite" "spr_moves_icon"
draw_sprite_ext(spr_moves_icon, 0, x + 50, y + 75, 0.5, 0.5, 0, $FFFFFF & $ffffff, 1);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 0B80C807
/// @DnDComment : Draw text showing the number of moves available.
/// @DnDArgument : "x" "90"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "75"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""
/// @DnDArgument : "var" "global.moves_available"
draw_text(x + 90, y + 75,  + string(global.moves_available));

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 42B0A199
/// @DnDComment : Draw text to show the current score.
/// @DnDArgument : "x" "770"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "75"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""
/// @DnDArgument : "var" "global.score_total"
draw_text(x + 770, y + 75,  + string(global.score_total));

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
/// @DnDVersion : 1
/// @DnDHash : 65D5F5D1
/// @DnDComment : Draw the first star on the HUD.$(13_10)$(13_10)star_done[n] will have a value of 0 or 1 when$(13_10)the star needs to be grey, and 2 when it needs to be$(13_10)golden, which is why we are using the clamp()$(13_10)function in the Frame box here.
/// @DnDArgument : "x" "170"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "75"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "sprite" "spr_hud_star"
/// @DnDArgument : "image" "clamp(obj_score.star_done[0],0,1)"
/// @DnDSaveInfo : "sprite" "spr_hud_star"
draw_sprite(spr_hud_star, clamp(obj_score.star_done[0],0,1), x + 170, y + 75);

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
/// @DnDVersion : 1
/// @DnDHash : 3C90E60A
/// @DnDComment : Draw the second star on the HUD.
/// @DnDArgument : "x" "400"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "75"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "sprite" "spr_hud_star"
/// @DnDArgument : "image" "clamp(obj_score.star_done[1],0,1)"
/// @DnDSaveInfo : "sprite" "spr_hud_star"
draw_sprite(spr_hud_star, clamp(obj_score.star_done[1],0,1), x + 400, y + 75);

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
/// @DnDVersion : 1
/// @DnDHash : 3123396E
/// @DnDComment : Draw the third star on the HUD.
/// @DnDArgument : "x" "690"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "75"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "sprite" "spr_hud_star"
/// @DnDArgument : "image" "clamp(obj_score.star_done[2],0,1)"
/// @DnDSaveInfo : "sprite" "spr_hud_star"
draw_sprite(spr_hud_star, clamp(obj_score.star_done[2],0,1), x + 690, y + 75);