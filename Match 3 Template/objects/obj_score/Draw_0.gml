/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 579FD6F5
/// @DnDComment : Draw the panel sprite.
draw_self();

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 1747B372
/// @DnDComment : Draw the empty/background score bar.
/// @DnDArgument : "x" "83"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "670"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "xscale" "0.9"
/// @DnDArgument : "rot" "90"
/// @DnDArgument : "sprite" "spr_score_bar_empty"
/// @DnDSaveInfo : "sprite" "spr_score_bar_empty"
draw_sprite_ext(spr_score_bar_empty, 0, x + 83, y + 670, 0.9, 1, 90, $FFFFFF & $ffffff, 1);

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 2CBA3E35
/// @DnDComment : Draw the score bar "filling".$(13_10)$(13_10)This is done use Scale X to stretch it.
/// @DnDArgument : "x" "83"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "670"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "xscale" "0.9 * min(1, global.score_total / global.score_target)"
/// @DnDArgument : "rot" "90"
/// @DnDArgument : "sprite" "spr_score_bar_full"
/// @DnDSaveInfo : "sprite" "spr_score_bar_full"
draw_sprite_ext(spr_score_bar_full, 0, x + 83, y + 670, 0.9 * min(1, global.score_total / global.score_target), 1, 90, $FFFFFF & $ffffff, 1);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 42A746AE
/// @DnDComment : Set the font for drawing text to font_main
/// @DnDArgument : "font" "fnt_score"
/// @DnDSaveInfo : "font" "fnt_score"
draw_set_font(fnt_score);

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

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 42B0A199
/// @DnDComment : Draw the score.
/// @DnDArgument : "x" "100"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "80"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""
/// @DnDArgument : "var" "global.score_total"
draw_text(x + 100, y + 80,  + string(global.score_total));

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
/// @DnDVersion : 1
/// @DnDHash : 65D5F5D1
/// @DnDComment : Draw the first star on the HUD.$(13_10)$(13_10)star_done[n] will have a value of 0 or 1 when$(13_10)the star needs to be grey, and 2 when it needs to be$(13_10)golden, which is why we are using the clamp()$(13_10)function in the Frame box here.
/// @DnDArgument : "x" "100"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "660"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "sprite" "spr_hud_star"
/// @DnDArgument : "image" "clamp(star_done[0],0,1)"
/// @DnDSaveInfo : "sprite" "spr_hud_star"
draw_sprite(spr_hud_star, clamp(star_done[0],0,1), x + 100, y + 660);

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
/// @DnDVersion : 1
/// @DnDHash : 3C90E60A
/// @DnDComment : Draw the second star on the HUD.
/// @DnDArgument : "x" "100"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "460"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "sprite" "spr_hud_star"
/// @DnDArgument : "image" "clamp(star_done[1],0,1)"
/// @DnDSaveInfo : "sprite" "spr_hud_star"
draw_sprite(spr_hud_star, clamp(star_done[1],0,1), x + 100, y + 460);

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
/// @DnDVersion : 1
/// @DnDHash : 3123396E
/// @DnDComment : Draw the third star on the HUD.
/// @DnDArgument : "x" "100"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "160"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "sprite" "spr_hud_star"
/// @DnDArgument : "image" "clamp(star_done[2],0,1)"
/// @DnDSaveInfo : "sprite" "spr_hud_star"
draw_sprite(spr_hud_star, clamp(star_done[2],0,1), x + 100, y + 160);