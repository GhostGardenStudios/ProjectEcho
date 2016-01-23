/// Call Some Scripts
scr_textbox();

///Check If Enter is Being Pressed
if (keyboard_check_pressed(vk_enter)) 
{    
    if (place_meeting(x+120, y+120, obj_humanhue))
        if (show_dialogue == false) 
        {
            show_debug_message("interaction is working");
            show_dialogue = true;
            alarm[1] = 100; 
            message = "Wow programming is really hard!"
            str = "";
        }
}
