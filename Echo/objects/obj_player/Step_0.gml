/// @description  Depth correction
depth = phy_position_y * -1;

/// Move the player in the step event
event_inherited();
script_execute(state);

