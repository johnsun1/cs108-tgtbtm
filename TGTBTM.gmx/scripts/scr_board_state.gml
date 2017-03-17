/// Check for last man standing victory
if (global.p1_health > 0 && global.p2_health == 0 && global.p3_health == 0) {
    /// Player 1 has won
    room_goto(rm_end_game);
} else if (global.p1_health == 0 && global.p2_health > 0 && global.p3_health == 0) {
    /// Player 2 has won
    room_goto(rm_end_game);
} else if (global.p1_health == 0 && global.p2_health == 0 && global.p3_health > 0) {
    /// Player 3 has won
    room_goto(rm_end_game);
}

/// Update attack menu choices
global.attack_menu = ds_list_create();

if (global.current_player == 1) {
    ds_list_add(global.attack_menu, "Player 2", "Player 3");
} else if (global.current_player == 2) {
    ds_list_add(global.attack_menu, "Player 1", "Player 3");
} else if (global.current_player == 3) {
    ds_list_add(global.attack_menu, "Player 1", "Player 2");
}

/// Check for fame victory condition
if (global.p1_rep >= 15 && global.p1_class == "Knight") {
    /// Player 1 has won 
    room_goto(rm_end_game);
} else if (global.p2_rep >= 15 && global.p2_class == "Knight") {
    /// Player 2 has won
    room_goto(rm_end_game);
} else if (global.p3_rep >= 15 && global.p3_class == "Knight") {
    /// Player 3 has won
    room_goto(rm_end_game);
}
