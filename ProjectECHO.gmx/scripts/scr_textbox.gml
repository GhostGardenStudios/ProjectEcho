/// Call Some Scripts
scr_interaction();

if (show_dialogue) {

/// Create Some Variables
width = 120;
height = 120;
padding = 8;

// Keep track of the starting line
start = ds_list_create();
ds_list_add( start, 0 );

// Keep track of the last space and current position
count = 0;
last_space = 0;
line = 0;


/// Draw the string and the box
draw_set_alpha( .5 );
draw_roundrect_colour( x, y, x+width, y+height, c_black, c_black, false );

// Set the color to white
draw_set_color( c_white );

// Are we past the width? Insert a line break
// This has to be before getting the last_space variable or it won't work right
if ( string_width( str ) > width-padding-padding ) {
    // Remove the space and replacec it with a line break
    message = string_delete( message, last_space, 1 );
    message = string_insert( "#", message, last_space ); 
    ds_list_add( start, last_space+1 );
}

// Make sure we have not reached the end of the message
if (count < string_length( message )) {
    // Are we at a space? Set the last space variable
    if (string_char_at(message, count ) == " " ) {
        last_space = count;
        }
        
        // Increment the count
        count ++;
}

// Did we go past the bottom? Move up a line
if ( string_height( str ) > height-padding ) {
    line ++;
}

// Grab the string
str = string_copy( message, ds_list_find_value( start, line), count-ds_list_find_value( start, line ) );

// Draw the text
draw_text( x+padding, y+padding, str );

}
