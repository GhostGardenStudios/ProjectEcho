/// scr_attack_state
//https://youtu.be/D2Cll6aINPI?t=17m18s

image_speed = .5;

// tying walk sprites to attack sprites
switch (sprite_index) {
    case spr_echo_down:
        // do something
        sprite_index = spr_echo_attack_down;
        break; 
        
    case spr_echo_up:
        sprite_index = spr_echo_attack_up;
        break;
        
    case spr_echo_left:
        sprite_index = spr_echo_attack_left;
        break;
        
    case spr_echo_right:
        sprite_index = spr_echo_attack_right;
        break;
}
