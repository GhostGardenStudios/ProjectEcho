/// @description Depth correction
depth = phy_position_y * -1;

/// Move towards the player
phy_position_x += sign(obj_player.x - x)*spd;
phy_position_y += sign(obj_player.y - y)*spd;

