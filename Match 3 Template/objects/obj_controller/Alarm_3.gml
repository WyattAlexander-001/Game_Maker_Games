/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 650B8A4C
/// @DnDComment : Apply the following code to obj_playfield_parent
/// @DnDApplyTo : {obj_playfield_parent}
with(obj_playfield_parent) {
	/// @DnDAction : YoYo Games.Instances.Call_User_Event
	/// @DnDVersion : 1
	/// @DnDHash : 2F63A9A4
	/// @DnDComment : Call User Event 0 of obj_playfield_parent, which$(13_10)re-populates empty squares with matching pieces
	/// @DnDParent : 650B8A4C
	event_user(0);
}

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 4DD10D5A
/// @DnDComment : Set alarm 1 of this object, obj_controller, to 15 frames.$(13_10)$(13_10)When the alarm is triggered the player will be free to take$(13_10)their next turn.
/// @DnDArgument : "steps" "15"
/// @DnDArgument : "alarm" "1"
alarm_set(1, 15);