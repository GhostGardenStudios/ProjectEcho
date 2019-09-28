/// @description  Draw the dialog

text_count += spd;
text_visible = string_copy(text[text_page], 0, text_count);
var xx = (x-__view_get( e__VW.XView, 0 ))*display_scale;
var yy = (y-__view_get( e__VW.YView, 0 ))*display_scale;
draw_set_colour(c_white);
draw_set_font(fnt_dialog);
draw_text_ext(xx+margin, yy+margin, string_hash_to_newline(text_visible), -1, width-(margin*2));


