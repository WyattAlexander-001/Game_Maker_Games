/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7A5EDC35
/// @DnDComment : To make smooth animations later on we are setting up$(13_10)a variable called target_x.$(13_10)$(13_10)The object will always approach this position in the $(13_10)step event.
/// @DnDArgument : "expr" "x"
/// @DnDArgument : "var" "target_x"
target_x = x;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 75B3A8BF
/// @DnDComment : As above, we also need to set a target_y variable.$(13_10)$(13_10)target_x and target_y start at the same values as the$(13_10)object's x and y positions in the room.
/// @DnDArgument : "expr" "y"
/// @DnDArgument : "var" "target_y"
target_y = y;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1891F20C
/// @DnDComment : This variable tells the object if it's currently part of$(13_10)a matching set. It will be updated and reset each time$(13_10)a player makes a move.
/// @DnDArgument : "var" "currently_matched"
currently_matched = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 102AD59A
/// @DnDComment : This variable keeps track of whether or not the object$(13_10)fell into an empty space this turn. We keep track of this$(13_10)so we can check for matches and the player can build combos$(13_10)when falling blocks also make groups of three.
/// @DnDArgument : "var" "fell_this_turn"
fell_this_turn = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0029D871
/// @DnDComment : Created a variable to store the id of a piece which swaps$(13_10)with this one. The variable starts with the value "noone"$(13_10)which is a keyword in GameMaker that will never match$(13_10)a real instance's id.
/// @DnDArgument : "expr" "noone"
/// @DnDArgument : "var" "swap_parent"
swap_parent = noone;

/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
/// @DnDVersion : 1
/// @DnDHash : 5B230931
/// @DnDComment : We are using the same sprite for all matching pieces,$(13_10)but using different subimages. We set the $(13_10)animation speed to 0 to stop the object from cycling$(13_10)through each image.
/// @DnDArgument : "speed" "0"
image_speed = 0;

/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 57680534
/// @DnDArgument : "expr" "room"
var l57680534_0 = room;
switch(l57680534_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 5F6FA4E0
	/// @DnDParent : 57680534
	/// @DnDArgument : "const" "rm_level_1"
	case rm_level_1:
		/// @DnDAction : YoYo Games.Random.Get_Random_Number
		/// @DnDVersion : 1
		/// @DnDHash : 0DDAAD14
		/// @DnDComment : We now set the image_index of the sprite to a $(13_10)random whole integer between 0 and 5. This will set$(13_10)the type of this matching piece randomly when it$(13_10)is created.
		/// @DnDParent : 5F6FA4E0
		/// @DnDArgument : "var" "image_index"
		/// @DnDArgument : "type" "1"
		/// @DnDArgument : "max" "5"
		image_index = floor(random_range(0, 5 + 1));
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 77035BF3
	/// @DnDParent : 57680534
	/// @DnDArgument : "const" "rm_level_2"
	case rm_level_2:
		/// @DnDAction : YoYo Games.Random.Get_Random_Number
		/// @DnDVersion : 1
		/// @DnDHash : 3A402500
		/// @DnDComment : We now set the image_index of the sprite to a $(13_10)random whole integer between 0 and 5. This will set$(13_10)the type of this matching piece randomly when it$(13_10)is created.
		/// @DnDParent : 77035BF3
		/// @DnDArgument : "var" "image_index"
		/// @DnDArgument : "type" "1"
		/// @DnDArgument : "max" "6"
		image_index = floor(random_range(0, 6 + 1));
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 07C1CCDE
	/// @DnDParent : 57680534
	/// @DnDArgument : "const" "rm_level_3"
	case rm_level_3:
		/// @DnDAction : YoYo Games.Random.Get_Random_Number
		/// @DnDVersion : 1
		/// @DnDHash : 72ECBD5F
		/// @DnDComment : We now set the image_index of the sprite to a $(13_10)random whole integer between 0 and 5. This will set$(13_10)the type of this matching piece randomly when it$(13_10)is created.
		/// @DnDParent : 07C1CCDE
		/// @DnDArgument : "var" "image_index"
		/// @DnDArgument : "type" "1"
		/// @DnDArgument : "max" "7"
		image_index = floor(random_range(0, 7 + 1));
		break;
}

/// @DnDAction : YoYo Games.Instances.Sprite_Image_Alpha
/// @DnDVersion : 1
/// @DnDHash : 49845D24
/// @DnDComment : Set the instance alpha to 0, we will gradually increase it$(13_10)in the step event.
/// @DnDArgument : "alpha" "0"
image_alpha = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 148E876E
/// @DnDComment : Create a variable called draw_squish.$(13_10)$(13_10)We use this to draw the effect of the pieces "squishing" when$(13_10)they fall into place.
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "draw_squish"
draw_squish = 1;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 23BD8BD4
/// @DnDComment : Create a variable called draw_squish_target.$(13_10)$(13_10)We use this to draw the effect of the pieces "squishing" when$(13_10)they fall into place.
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "draw_squish_target"
draw_squish_target = 1;

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 54F1E127
/// @DnDComment : Create a random number and assign it to a temporary variable$(13_10)called _y_offset_randomiser. We will multiply this by -10$(13_10)in the next action and assign it to the variable$(13_10)draw_y_offset.$(13_10)$(13_10)Adding this random element to the y offset will make the$(13_10)pieces appear to fall into place more naturally.
/// @DnDArgument : "var" "_y_offset_randomiser"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "min" "1"
/// @DnDArgument : "max" "10"
var _y_offset_randomiser = floor(random_range(1, 10 + 1));

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6310EDD2
/// @DnDComment : Create a variable called draw_y_offset.$(13_10)$(13_10)We use this to offset the y at which the object is drawn when it$(13_10)is first created.
/// @DnDArgument : "expr" "-10*_y_offset_randomiser"
/// @DnDArgument : "var" "draw_y_offset"
draw_y_offset = -10*_y_offset_randomiser;

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 43696D8E
/// @DnDComment : See scripts >> check_on_startup$(13_10)$(13_10)This function checks to see if this piece would create$(13_10)a line of three at the start of the game, and if so it$(13_10)changes the type of piece until it will no longer create$(13_10)a match.$(13_10)$(13_10)NOTE: This script would permanently freeze the game if$(13_10)you were using too few types of matching pieces.
/// @DnDArgument : "function" "check_on_startup"
check_on_startup();

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 476C630A
/// @DnDComment : When triggered we call user event 0$(13_10)which checks for matches.$(13_10)They take place in a user event because they $(13_10)are sometimes called from obj_controller.$(13_10)
/// @DnDArgument : "funcName" "check_for_matches"
function check_for_matches() 
{
	/// @DnDAction : YoYo Games.Instances.Call_User_Event
	/// @DnDVersion : 1
	/// @DnDHash : 1B591737
	/// @DnDParent : 476C630A
	event_user(0);
}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 1ECADB2A
/// @DnDInput : 2
/// @DnDArgument : "funcName" "check_drag"
/// @DnDArgument : "arg" "_drag_horizontal"
/// @DnDArgument : "arg_1" "_drag_vertical"
function check_drag(_drag_horizontal, _drag_vertical) 
{
	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 53A439E6
	/// @DnDComment : Check if player is in pause menu and ends event if it is
	/// @DnDParent : 1ECADB2A
	/// @DnDArgument : "obj" "obj_game_pause"
	/// @DnDSaveInfo : "obj" "obj_game_pause"
	var l53A439E6_0 = false;
	l53A439E6_0 = instance_exists(obj_game_pause);
	if(l53A439E6_0)
	{
		/// @DnDAction : YoYo Games.Common.Exit_Event
		/// @DnDVersion : 1
		/// @DnDHash : 33BE5740
		/// @DnDParent : 53A439E6
		exit;
	}

	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 39E480EF
	/// @DnDComment : Check if player is in game over menu and ends event if it is
	/// @DnDParent : 1ECADB2A
	/// @DnDArgument : "obj" "obj_game_over_lose"
	/// @DnDSaveInfo : "obj" "obj_game_over_lose"
	var l39E480EF_0 = false;
	l39E480EF_0 = instance_exists(obj_game_over_lose);
	if(l39E480EF_0)
	{
		/// @DnDAction : YoYo Games.Common.Exit_Event
		/// @DnDVersion : 1
		/// @DnDHash : 3B103C28
		/// @DnDParent : 39E480EF
		exit;
	}

	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 430BC0FA
	/// @DnDComment : Check if player is in game over menu and ends event if it is
	/// @DnDParent : 1ECADB2A
	/// @DnDArgument : "obj" "obj_game_over_win"
	/// @DnDSaveInfo : "obj" "obj_game_over_win"
	var l430BC0FA_0 = false;
	l430BC0FA_0 = instance_exists(obj_game_over_win);
	if(l430BC0FA_0)
	{
		/// @DnDAction : YoYo Games.Common.Exit_Event
		/// @DnDVersion : 1
		/// @DnDHash : 72703F7B
		/// @DnDParent : 430BC0FA
		exit;
	}

	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 298FA893
	/// @DnDComment : Check if player is in game over menu and ends event if it is
	/// @DnDParent : 1ECADB2A
	/// @DnDArgument : "obj" "obj_no_valid_matches"
	/// @DnDSaveInfo : "obj" "obj_no_valid_matches"
	var l298FA893_0 = false;
	l298FA893_0 = instance_exists(obj_no_valid_matches);
	if(l298FA893_0)
	{
		/// @DnDAction : YoYo Games.Common.Exit_Event
		/// @DnDVersion : 1
		/// @DnDHash : 76762D6E
		/// @DnDParent : 298FA893
		exit;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 72FC558E
	/// @DnDComment : Check if the player is allowed to swap the pieces.$(13_10)$(13_10)They are not allowed while the game is calculating$(13_10)the result of their previous move, for example.
	/// @DnDParent : 1ECADB2A
	/// @DnDArgument : "var" "global.can_swap"
	/// @DnDArgument : "value" "1"
	if(global.can_swap == 1)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 712AB774
		/// @DnDComment : The player dragged this matching piece one square to the right
		/// @DnDParent : 72FC558E
		/// @DnDArgument : "var" "_drag_horizontal"
		/// @DnDArgument : "op" "2"
		/// @DnDArgument : "value" "sprite_width / 2"
		if(_drag_horizontal > sprite_width / 2)
		{
			/// @DnDAction : YoYo Games.Collisions.If_Collision_Point
			/// @DnDVersion : 1
			/// @DnDHash : 1E166504
			/// @DnDComment : Check if there is a piece on the playfield$(13_10)one square to the right of the piece currently$(13_10)being dragged.$(13_10)$(13_10)If yes, assign the id of the piece we want to$(13_10)swap with to a temporary variable called$(13_10)_piece_to_swap.
			/// @DnDParent : 712AB774
			/// @DnDArgument : "x" "sprite_width"
			/// @DnDArgument : "x_relative" "1"
			/// @DnDArgument : "y_relative" "1"
			/// @DnDArgument : "target" "_piece_to_swap"
			/// @DnDArgument : "target_temp" "1"
			/// @DnDArgument : "obj" "obj_matching_piece"
			/// @DnDSaveInfo : "obj" "obj_matching_piece"
			var l1E166504_0 = collision_point(x + sprite_width, y + 0, obj_matching_piece, true, 1);
			var _piece_to_swap = l1E166504_0;
			if((l1E166504_0))
			{
				/// @DnDAction : YoYo Games.Audio.Play_Audio
				/// @DnDVersion : 1.1
				/// @DnDHash : 7D6F4BCF
				/// @DnDComment : Play a sound effect indicating that the$(13_10)pieces are being swapped.
				/// @DnDParent : 1E166504
				/// @DnDArgument : "soundid" "snd_piece_swap"
				/// @DnDSaveInfo : "soundid" "snd_piece_swap"
				audio_play_sound(snd_piece_swap, 0, 0, 1.0, undefined, 1.0);
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 6D762057
				/// @DnDComment : Set the current piece to move to the right$(13_10)by updating the target_x variable which$(13_10)the piece will approach in the step event
				/// @DnDParent : 1E166504
				/// @DnDArgument : "expr" "sprite_width"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "target_x"
				target_x += sprite_width;
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 210B0DC2
				/// @DnDComment : Tell the piece we're swapping with to move$(13_10)to the left by updating the target_x variable which$(13_10)the piece will approach in its step event
				/// @DnDParent : 1E166504
				/// @DnDArgument : "expr" "-_piece_to_swap.sprite_width"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "_piece_to_swap.target_x"
				_piece_to_swap.target_x += -_piece_to_swap.sprite_width;
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 2F26ACD1
				/// @DnDComment : Tell the piece we're swapping with which piece$(13_10)forced it to swap by changing its swap_parent$(13_10)variable to the id of this instance
				/// @DnDParent : 1E166504
				/// @DnDArgument : "expr" "id"
				/// @DnDArgument : "var" "_piece_to_swap.swap_parent"
				_piece_to_swap.swap_parent = id;
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 68C02340
				/// @DnDComment : For this piece, set the variable swap_parent to the id$(13_10)of the _piece_to_swap so that we can use it later
				/// @DnDParent : 1E166504
				/// @DnDArgument : "expr" "_piece_to_swap"
				/// @DnDArgument : "var" "swap_parent"
				swap_parent = _piece_to_swap;
			
				/// @DnDAction : YoYo Games.Common.Set_Global
				/// @DnDVersion : 1
				/// @DnDHash : 2B2041C9
				/// @DnDComment : The player performed a valid move and the game will$(13_10)now need to calculate the result of that move before$(13_10)we let the player move again.$(13_10)$(13_10)Here we set the global variable can_swap to 0.
				/// @DnDParent : 1E166504
				/// @DnDArgument : "var" "can_swap"
				global.can_swap = 0;
			
				/// @DnDAction : YoYo Games.Time.Time_Source_Create
				/// @DnDVersion : 1
				/// @DnDHash : 442E80BC
				/// @DnDComment : Wait 15 steps for the current move to animate before$(13_10)checking for matches. If you change the speed at which$(13_10)the pieces move in the step event, you will also need$(13_10)to change this value.
				/// @DnDParent : 1E166504
				/// @DnDArgument : "idx" "_ts_check_for_matches"
				/// @DnDArgument : "var_temp" "1"
				/// @DnDArgument : "parent" "time_source_game"
				/// @DnDArgument : "period" "15"
				/// @DnDArgument : "units" "time_source_units_frames"
				/// @DnDArgument : "callback" "check_for_matches"
				var _ts_check_for_matches = time_source_create(time_source_game, 15, time_source_units_frames, check_for_matches, [], 1, time_source_expire_after);
			
				/// @DnDAction : YoYo Games.Time.Time_Source_Start
				/// @DnDVersion : 1
				/// @DnDHash : 0CA9EA58
				/// @DnDParent : 1E166504
				/// @DnDArgument : "idx" "_ts_check_for_matches"
				time_source_start(_ts_check_for_matches);
			
				/// @DnDAction : YoYo Games.Common.Apply_To
				/// @DnDVersion : 1
				/// @DnDHash : 6194028B
				/// @DnDComment : Apply the following code to the _piece_to_swap
				/// @DnDApplyTo : _piece_to_swap
				/// @DnDParent : 1E166504
				with(_piece_to_swap) {
					/// @DnDAction : YoYo Games.Time.Time_Source_Create
					/// @DnDVersion : 1
					/// @DnDHash : 40CE674C
					/// @DnDComment : Wait 15 steps for the current move to animate before$(13_10)checking for matches. If you change the speed at which$(13_10)the pieces move in the step event, you will also need$(13_10)to change this value.
					/// @DnDParent : 6194028B
					/// @DnDArgument : "idx" "_ts_check_for_matches"
					/// @DnDArgument : "var_temp" "1"
					/// @DnDArgument : "parent" "time_source_game"
					/// @DnDArgument : "period" "15"
					/// @DnDArgument : "units" "time_source_units_frames"
					/// @DnDArgument : "callback" "check_for_matches"
					var _ts_check_for_matches = time_source_create(time_source_game, 15, time_source_units_frames, check_for_matches, [], 1, time_source_expire_after);
				
					/// @DnDAction : YoYo Games.Time.Time_Source_Start
					/// @DnDVersion : 1
					/// @DnDHash : 69734CAF
					/// @DnDParent : 6194028B
					/// @DnDArgument : "idx" "_ts_check_for_matches"
					time_source_start(_ts_check_for_matches);
				}
			
				/// @DnDAction : YoYo Games.Common.Exit_Event
				/// @DnDVersion : 1
				/// @DnDHash : 36071E7A
				/// @DnDComment : Since we have already started processing a valid move, exit the$(13_10)current event so that no more drags are processed.
				/// @DnDParent : 1E166504
				exit;
			}
		}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 32ABF06F
		/// @DnDComment : The player dragged this matching piece one square to the left
		/// @DnDParent : 72FC558E
		/// @DnDArgument : "var" "_drag_horizontal"
		/// @DnDArgument : "op" "1"
		/// @DnDArgument : "value" "-sprite_width / 2"
		if(_drag_horizontal < -sprite_width / 2)
		{
			/// @DnDAction : YoYo Games.Collisions.If_Collision_Point
			/// @DnDVersion : 1
			/// @DnDHash : 78ACBE2C
			/// @DnDComment : Check if there is a piece on the playfield$(13_10)one square to the left of the piece currently$(13_10)being dragged.$(13_10)$(13_10)If yes, assign the id of the piece we want to$(13_10)swap with to a temporary variable called$(13_10)_piece_to_swap.
			/// @DnDParent : 32ABF06F
			/// @DnDArgument : "x" "-sprite_width"
			/// @DnDArgument : "x_relative" "1"
			/// @DnDArgument : "y_relative" "1"
			/// @DnDArgument : "target" "_piece_to_swap"
			/// @DnDArgument : "target_temp" "1"
			/// @DnDArgument : "obj" "obj_matching_piece"
			/// @DnDSaveInfo : "obj" "obj_matching_piece"
			var l78ACBE2C_0 = collision_point(x + -sprite_width, y + 0, obj_matching_piece, true, 1);
			var _piece_to_swap = l78ACBE2C_0;
			if((l78ACBE2C_0))
			{
				/// @DnDAction : YoYo Games.Audio.Play_Audio
				/// @DnDVersion : 1.1
				/// @DnDHash : 049CC3CF
				/// @DnDComment : Play a sound effect indicating that the$(13_10)pieces are being swapped.
				/// @DnDParent : 78ACBE2C
				/// @DnDArgument : "soundid" "snd_piece_swap"
				/// @DnDSaveInfo : "soundid" "snd_piece_swap"
				audio_play_sound(snd_piece_swap, 0, 0, 1.0, undefined, 1.0);
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 5DD76B2F
				/// @DnDComment : Set the current piece to move to the left$(13_10)by updating the target_x variable which$(13_10)the piece will approach in the step event
				/// @DnDParent : 78ACBE2C
				/// @DnDArgument : "expr" "-sprite_width"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "target_x"
				target_x += -sprite_width;
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 579D7023
				/// @DnDComment : Tell the piece we're swapping with to move$(13_10)to the right by updating the target_x variable which$(13_10)the piece will approach in its step event
				/// @DnDParent : 78ACBE2C
				/// @DnDArgument : "expr" "_piece_to_swap.sprite_width"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "_piece_to_swap.target_x"
				_piece_to_swap.target_x += _piece_to_swap.sprite_width;
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 174C9581
				/// @DnDComment : Tell the piece we're swapping with which piece$(13_10)forced it to swap by changing its swap_parent$(13_10)variable to the id of this instance
				/// @DnDParent : 78ACBE2C
				/// @DnDArgument : "expr" "id"
				/// @DnDArgument : "var" "_piece_to_swap.swap_parent"
				_piece_to_swap.swap_parent = id;
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 716B85D8
				/// @DnDComment : For this piece, set the variable swap_parent to the id$(13_10)of the _piece_to_swap so that we can use it later
				/// @DnDParent : 78ACBE2C
				/// @DnDArgument : "expr" "_piece_to_swap"
				/// @DnDArgument : "var" "swap_parent"
				swap_parent = _piece_to_swap;
			
				/// @DnDAction : YoYo Games.Common.Set_Global
				/// @DnDVersion : 1
				/// @DnDHash : 6780AC86
				/// @DnDComment : The player performed a valid move and the game will$(13_10)now need to calculate the result of that move before$(13_10)we let the player move again.$(13_10)$(13_10)Here we set the global variable can_swap to 0.
				/// @DnDParent : 78ACBE2C
				/// @DnDArgument : "var" "can_swap"
				global.can_swap = 0;
			
				/// @DnDAction : YoYo Games.Time.Time_Source_Create
				/// @DnDVersion : 1
				/// @DnDHash : 22B9A9BC
				/// @DnDComment : Wait 15 steps for the current move to animate before$(13_10)checking for matches. If you change the speed at which$(13_10)the pieces move in the step event, you will also need$(13_10)to change this value.
				/// @DnDParent : 78ACBE2C
				/// @DnDArgument : "idx" "_ts_check_for_matches"
				/// @DnDArgument : "var_temp" "1"
				/// @DnDArgument : "parent" "time_source_game"
				/// @DnDArgument : "period" "15"
				/// @DnDArgument : "units" "time_source_units_frames"
				/// @DnDArgument : "callback" "check_for_matches"
				var _ts_check_for_matches = time_source_create(time_source_game, 15, time_source_units_frames, check_for_matches, [], 1, time_source_expire_after);
			
				/// @DnDAction : YoYo Games.Time.Time_Source_Start
				/// @DnDVersion : 1
				/// @DnDHash : 5279BF84
				/// @DnDParent : 78ACBE2C
				/// @DnDArgument : "idx" "_ts_check_for_matches"
				time_source_start(_ts_check_for_matches);
			
				/// @DnDAction : YoYo Games.Common.Apply_To
				/// @DnDVersion : 1
				/// @DnDHash : 7A393505
				/// @DnDComment : Apply the following code to the _piece_to_swap
				/// @DnDApplyTo : _piece_to_swap
				/// @DnDParent : 78ACBE2C
				with(_piece_to_swap) {
					/// @DnDAction : YoYo Games.Time.Time_Source_Create
					/// @DnDVersion : 1
					/// @DnDHash : 6962DFBF
					/// @DnDComment : Wait 15 steps for the current move to animate before$(13_10)checking for matches. If you change the speed at which$(13_10)the pieces move in the step event, you will also need$(13_10)to change this value.
					/// @DnDParent : 7A393505
					/// @DnDArgument : "idx" "_ts_check_for_matches"
					/// @DnDArgument : "var_temp" "1"
					/// @DnDArgument : "parent" "time_source_game"
					/// @DnDArgument : "period" "15"
					/// @DnDArgument : "units" "time_source_units_frames"
					/// @DnDArgument : "callback" "check_for_matches"
					var _ts_check_for_matches = time_source_create(time_source_game, 15, time_source_units_frames, check_for_matches, [], 1, time_source_expire_after);
				
					/// @DnDAction : YoYo Games.Time.Time_Source_Start
					/// @DnDVersion : 1
					/// @DnDHash : 4046E2D8
					/// @DnDParent : 7A393505
					/// @DnDArgument : "idx" "_ts_check_for_matches"
					time_source_start(_ts_check_for_matches);
				}
			
				/// @DnDAction : YoYo Games.Common.Exit_Event
				/// @DnDVersion : 1
				/// @DnDHash : 3B35C630
				/// @DnDComment : Since we have already started processing a valid move, exit the$(13_10)current event so that no more drags are processed.
				/// @DnDParent : 78ACBE2C
				exit;
			}
		}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3A69C4A8
		/// @DnDComment : The player dragged this matching piece one square downwards
		/// @DnDParent : 72FC558E
		/// @DnDArgument : "var" "_drag_vertical"
		/// @DnDArgument : "op" "2"
		/// @DnDArgument : "value" "sprite_height / 2"
		if(_drag_vertical > sprite_height / 2)
		{
			/// @DnDAction : YoYo Games.Collisions.If_Collision_Point
			/// @DnDVersion : 1
			/// @DnDHash : 5E815501
			/// @DnDComment : Check if there is a piece on the playfield$(13_10)one square below the piece currently$(13_10)being dragged.$(13_10)$(13_10)If yes, assign the id of the piece we want to$(13_10)swap with to a temporary variable called$(13_10)_piece_to_swap.
			/// @DnDParent : 3A69C4A8
			/// @DnDArgument : "x_relative" "1"
			/// @DnDArgument : "y" "sprite_height"
			/// @DnDArgument : "y_relative" "1"
			/// @DnDArgument : "target" "_piece_to_swap"
			/// @DnDArgument : "target_temp" "1"
			/// @DnDArgument : "obj" "obj_matching_piece"
			/// @DnDSaveInfo : "obj" "obj_matching_piece"
			var l5E815501_0 = collision_point(x + 0, y + sprite_height, obj_matching_piece, true, 1);
			var _piece_to_swap = l5E815501_0;
			if((l5E815501_0))
			{
				/// @DnDAction : YoYo Games.Audio.Play_Audio
				/// @DnDVersion : 1.1
				/// @DnDHash : 5D9E1618
				/// @DnDComment : Play a sound effect indicating that the$(13_10)pieces are being swapped.
				/// @DnDParent : 5E815501
				/// @DnDArgument : "soundid" "snd_piece_swap"
				/// @DnDSaveInfo : "soundid" "snd_piece_swap"
				audio_play_sound(snd_piece_swap, 0, 0, 1.0, undefined, 1.0);
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 122771E9
				/// @DnDComment : Set the current piece to move downwards$(13_10)by updating the target_y variable which$(13_10)the piece will approach in the step event
				/// @DnDParent : 5E815501
				/// @DnDArgument : "expr" "sprite_height"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "target_y"
				target_y += sprite_height;
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 0D64182C
				/// @DnDComment : Tell the piece we're swapping with to move$(13_10)upwards by updating the target_y variable which$(13_10)the piece will approach in its step event
				/// @DnDParent : 5E815501
				/// @DnDArgument : "expr" "-_piece_to_swap.sprite_height"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "_piece_to_swap.target_y"
				_piece_to_swap.target_y += -_piece_to_swap.sprite_height;
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 0616A332
				/// @DnDComment : Tell the piece we're swapping with which piece$(13_10)forced it to swap by changing its swap_parent$(13_10)variable to the id of this instance
				/// @DnDParent : 5E815501
				/// @DnDArgument : "expr" "id"
				/// @DnDArgument : "var" "_piece_to_swap.swap_parent"
				_piece_to_swap.swap_parent = id;
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 2E552E01
				/// @DnDComment : For this piece, set the variable swap_parent to the id$(13_10)of the _piece_to_swap so that we can use it later
				/// @DnDParent : 5E815501
				/// @DnDArgument : "expr" "_piece_to_swap"
				/// @DnDArgument : "var" "swap_parent"
				swap_parent = _piece_to_swap;
			
				/// @DnDAction : YoYo Games.Common.Set_Global
				/// @DnDVersion : 1
				/// @DnDHash : 0E762D49
				/// @DnDComment : The player performed a valid move and the game will$(13_10)now need to calculate the result of that move before$(13_10)we let the player move again.$(13_10)$(13_10)Here we set the global variable can_swap to 0.
				/// @DnDParent : 5E815501
				/// @DnDArgument : "var" "can_swap"
				global.can_swap = 0;
			
				/// @DnDAction : YoYo Games.Time.Time_Source_Create
				/// @DnDVersion : 1
				/// @DnDHash : 55DC4566
				/// @DnDParent : 5E815501
				/// @DnDArgument : "idx" "_ts_check_for_matches"
				/// @DnDArgument : "var_temp" "1"
				/// @DnDArgument : "parent" "time_source_game"
				/// @DnDArgument : "period" "15"
				/// @DnDArgument : "units" "time_source_units_frames"
				/// @DnDArgument : "callback" "check_for_matches"
				var _ts_check_for_matches = time_source_create(time_source_game, 15, time_source_units_frames, check_for_matches, [], 1, time_source_expire_after);
			
				/// @DnDAction : YoYo Games.Time.Time_Source_Start
				/// @DnDVersion : 1
				/// @DnDHash : 38C975B5
				/// @DnDParent : 5E815501
				/// @DnDArgument : "idx" "_ts_check_for_matches"
				time_source_start(_ts_check_for_matches);
			
				/// @DnDAction : YoYo Games.Common.Apply_To
				/// @DnDVersion : 1
				/// @DnDHash : 6117B0E1
				/// @DnDComment : Apply the following code to the _piece_to_swap
				/// @DnDApplyTo : _piece_to_swap
				/// @DnDParent : 5E815501
				with(_piece_to_swap) {
					/// @DnDAction : YoYo Games.Time.Time_Source_Create
					/// @DnDVersion : 1
					/// @DnDHash : 17A02512
					/// @DnDParent : 6117B0E1
					/// @DnDArgument : "idx" "_ts_check_for_matches"
					/// @DnDArgument : "var_temp" "1"
					/// @DnDArgument : "parent" "time_source_game"
					/// @DnDArgument : "period" "15"
					/// @DnDArgument : "units" "time_source_units_frames"
					/// @DnDArgument : "callback" "check_for_matches"
					var _ts_check_for_matches = time_source_create(time_source_game, 15, time_source_units_frames, check_for_matches, [], 1, time_source_expire_after);
				
					/// @DnDAction : YoYo Games.Time.Time_Source_Start
					/// @DnDVersion : 1
					/// @DnDHash : 4E0FFF6E
					/// @DnDParent : 6117B0E1
					/// @DnDArgument : "idx" "_ts_check_for_matches"
					time_source_start(_ts_check_for_matches);
				}
			
				/// @DnDAction : YoYo Games.Common.Exit_Event
				/// @DnDVersion : 1
				/// @DnDHash : 1E2FD866
				/// @DnDComment : Since we have already started processing a valid move, exit the$(13_10)current event so that no more drags are processed.
				/// @DnDParent : 5E815501
				exit;
			}
		}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5E535201
		/// @DnDComment : The player dragged this matching piece one square upwards
		/// @DnDParent : 72FC558E
		/// @DnDArgument : "var" "_drag_vertical"
		/// @DnDArgument : "op" "1"
		/// @DnDArgument : "value" "-sprite_height / 2"
		if(_drag_vertical < -sprite_height / 2)
		{
			/// @DnDAction : YoYo Games.Collisions.If_Collision_Point
			/// @DnDVersion : 1
			/// @DnDHash : 2F61039F
			/// @DnDComment : Check if there is a piece on the playfield$(13_10)one square above the piece currently$(13_10)being dragged.$(13_10)$(13_10)If yes, assign the id of the piece we want to$(13_10)swap with to a temporary variable called$(13_10)_piece_to_swap.
			/// @DnDParent : 5E535201
			/// @DnDArgument : "x_relative" "1"
			/// @DnDArgument : "y" "-sprite_height"
			/// @DnDArgument : "y_relative" "1"
			/// @DnDArgument : "target" "_piece_to_swap"
			/// @DnDArgument : "target_temp" "1"
			/// @DnDArgument : "obj" "obj_matching_piece"
			/// @DnDSaveInfo : "obj" "obj_matching_piece"
			var l2F61039F_0 = collision_point(x + 0, y + -sprite_height, obj_matching_piece, true, 1);
			var _piece_to_swap = l2F61039F_0;
			if((l2F61039F_0))
			{
				/// @DnDAction : YoYo Games.Audio.Play_Audio
				/// @DnDVersion : 1.1
				/// @DnDHash : 48708F7F
				/// @DnDComment : Play a sound effect indicating that the$(13_10)pieces are being swapped.
				/// @DnDParent : 2F61039F
				/// @DnDArgument : "soundid" "snd_piece_swap"
				/// @DnDSaveInfo : "soundid" "snd_piece_swap"
				audio_play_sound(snd_piece_swap, 0, 0, 1.0, undefined, 1.0);
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 433A35A5
				/// @DnDComment : Set the current piece to move upwards$(13_10)by updating the target_y variable which$(13_10)the piece will approach in the step event
				/// @DnDParent : 2F61039F
				/// @DnDArgument : "expr" "-sprite_height"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "target_y"
				target_y += -sprite_height;
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 50ACFDEA
				/// @DnDComment : Tell the piece we're swapping with to move$(13_10)downwards by updating the target_y variable which$(13_10)the piece will approach in its step event
				/// @DnDParent : 2F61039F
				/// @DnDArgument : "expr" "_piece_to_swap.sprite_height"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "_piece_to_swap.target_y"
				_piece_to_swap.target_y += _piece_to_swap.sprite_height;
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 542015D8
				/// @DnDComment : Tell the piece we're swapping with which piece$(13_10)forced it to swap by changing its swap_parent$(13_10)variable to the id of this instance
				/// @DnDParent : 2F61039F
				/// @DnDArgument : "expr" "id"
				/// @DnDArgument : "var" "_piece_to_swap.swap_parent"
				_piece_to_swap.swap_parent = id;
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 1FBA941E
				/// @DnDComment : For this piece, set the variable swap_parent to the id$(13_10)of the _piece_to_swap so that we can use it later
				/// @DnDParent : 2F61039F
				/// @DnDArgument : "expr" "_piece_to_swap"
				/// @DnDArgument : "var" "swap_parent"
				swap_parent = _piece_to_swap;
			
				/// @DnDAction : YoYo Games.Common.Set_Global
				/// @DnDVersion : 1
				/// @DnDHash : 3C7FF6DF
				/// @DnDComment : The player performed a valid move and the game will$(13_10)now need to calculate the result of that move before$(13_10)we let the player move again.$(13_10)$(13_10)Here we set the global variable can_swap to 0.
				/// @DnDParent : 2F61039F
				/// @DnDArgument : "var" "can_swap"
				global.can_swap = 0;
			
				/// @DnDAction : YoYo Games.Time.Time_Source_Create
				/// @DnDVersion : 1
				/// @DnDHash : 374775DF
				/// @DnDParent : 2F61039F
				/// @DnDArgument : "idx" "_ts_check_for_matches"
				/// @DnDArgument : "var_temp" "1"
				/// @DnDArgument : "parent" "time_source_game"
				/// @DnDArgument : "period" "15"
				/// @DnDArgument : "units" "time_source_units_frames"
				/// @DnDArgument : "callback" "check_for_matches"
				var _ts_check_for_matches = time_source_create(time_source_game, 15, time_source_units_frames, check_for_matches, [], 1, time_source_expire_after);
			
				/// @DnDAction : YoYo Games.Time.Time_Source_Start
				/// @DnDVersion : 1
				/// @DnDHash : 356F05DE
				/// @DnDParent : 2F61039F
				/// @DnDArgument : "idx" "_ts_check_for_matches"
				time_source_start(_ts_check_for_matches);
			
				/// @DnDAction : YoYo Games.Common.Apply_To
				/// @DnDVersion : 1
				/// @DnDHash : 3B335742
				/// @DnDComment : Apply the following code to the _piece_to_swap
				/// @DnDApplyTo : _piece_to_swap
				/// @DnDParent : 2F61039F
				with(_piece_to_swap) {
					/// @DnDAction : YoYo Games.Time.Time_Source_Create
					/// @DnDVersion : 1
					/// @DnDHash : 13AC3CD3
					/// @DnDParent : 3B335742
					/// @DnDArgument : "idx" "_ts_check_for_matches"
					/// @DnDArgument : "var_temp" "1"
					/// @DnDArgument : "parent" "time_source_game"
					/// @DnDArgument : "period" "15"
					/// @DnDArgument : "units" "time_source_units_frames"
					/// @DnDArgument : "callback" "check_for_matches"
					var _ts_check_for_matches = time_source_create(time_source_game, 15, time_source_units_frames, check_for_matches, [], 1, time_source_expire_after);
				
					/// @DnDAction : YoYo Games.Time.Time_Source_Start
					/// @DnDVersion : 1
					/// @DnDHash : 4EB83FEA
					/// @DnDParent : 3B335742
					/// @DnDArgument : "idx" "_ts_check_for_matches"
					time_source_start(_ts_check_for_matches);
				}
			
				/// @DnDAction : YoYo Games.Common.Exit_Event
				/// @DnDVersion : 1
				/// @DnDHash : 1518D04B
				/// @DnDComment : Since we have already started processing a valid move, exit the$(13_10)current event so that no more drags are processed.
				/// @DnDParent : 2F61039F
				exit;
			}
		}
	}
}