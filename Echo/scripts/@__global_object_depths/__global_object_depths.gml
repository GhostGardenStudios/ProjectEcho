// Initialise the global array that allows the lookup of the depth of a given object
// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
// NOTE: MacroExpansion is used to insert the array initialisation at import time
gml_pragma( "global", "__global_object_depths()");

// insert the generated arrays here
global.__objectDepths[0] = 0; // obj_player
global.__objectDepths[1] = 0; // obj_hue
global.__objectDepths[2] = 0; // obj_humanhue
global.__objectDepths[3] = 0; // obj_wall
global.__objectDepths[4] = 0; // obj_view
global.__objectDepths[5] = 0; // obj_parent
global.__objectDepths[6] = 0; // obj_dash_effect
global.__objectDepths[7] = 0; // obj_enemy_test
global.__objectDepths[8] = -1000; // obj_dialog


global.__objectNames[0] = "obj_player";
global.__objectNames[1] = "obj_hue";
global.__objectNames[2] = "obj_humanhue";
global.__objectNames[3] = "obj_wall";
global.__objectNames[4] = "obj_view";
global.__objectNames[5] = "obj_parent";
global.__objectNames[6] = "obj_dash_effect";
global.__objectNames[7] = "obj_enemy_test";
global.__objectNames[8] = "obj_dialog";


// create another array that has the correct entries
var len = array_length_1d(global.__objectDepths);
global.__objectID2Depth = [];
for( var i=0; i<len; ++i ) {
	var objID = asset_get_index( global.__objectNames[i] );
	if (objID >= 0) {
		global.__objectID2Depth[ objID ] = global.__objectDepths[i];
	} // end if
} // end for