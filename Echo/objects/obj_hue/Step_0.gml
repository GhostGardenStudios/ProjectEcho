/// @description Depth Correction
depth = phy_position_y * -1;

///Movement Code

targetx = obj_player.x;
targety = obj_player.y;

/// Radius
var xDif = phy_position_x - targetx;
var yDif = phy_position_y - targety;
var d = sqrt((xDif*xDif)+(yDif*yDif));

if (d < 45) {
    phy_position_x+=(random_range(-1,1));
    phy_position_y+=(random_range(-1,1));
} else {
    /// Move towards the player
    var dir = point_direction(x, y, targetx, targety);
    var hspd = lengthdir_x(spd, dir); 
    var vspd = lengthdir_y(spd, dir);
    phy_position_x += hspd;
    phy_position_y += vspd;
}

/// Flip sprite based on player
if(obj_player.sprite_index==spr_echo_left){
    sprite_index=spr_hue_left;
} else if (obj_player.sprite_index==spr_echo_right) {
    sprite_index=spr_hue_right;    
}
 


