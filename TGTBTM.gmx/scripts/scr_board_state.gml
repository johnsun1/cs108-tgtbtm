///Update the board after a player turn

// Check for last man standing victory
if (global.p1_health > 0 && global.p2_health <= 0 && global.p3_health <= 0) {
    // Player 1 has won
    global.winner = "Player 1";
    global.win_type = "Last man standing";
    room_goto(rm_end_game);
} else if (global.p1_health <= 0 && global.p2_health > 0 && global.p3_health <= 0) {
    // Player 2 has won
    global.winner = "Player 2";
    global.win_type = "Last man standing";
    room_goto(rm_end_game);
} else if (global.p1_health <= 0 && global.p2_health <= 0 && global.p3_health > 0) {
    // Player 3 has won
    global.winner = "Player 3";
    global.win_type = "Last man standing";
    room_goto(rm_end_game);
} else if (global.p1_health <= 0 && global.p2_health <= 0 && global.p3_health <= 0) {
    global.winner = "Everyone";
    global.win_type = "Draw";
    room_goto(rm_end_game);
}

// Check for fame victory condition
if (global.p1_rep >= 15 && global.p1_class == "Knight") {
    // Player 1 has won 
    global.winner = "Player 1";
    global.win_type = "Fame";
    room_goto(rm_end_game);
} else if (global.p2_rep >= 15 && global.p2_class == "Knight") {
    // Player 2 has won
    global.winner = "Player 2";
    global.win_type = "Fame";
    room_goto(rm_end_game);
} else if (global.p3_rep >= 15 && global.p3_class == "Knight") {
    // Player 3 has won
    global.winner = "Player 3";
    global.win_type = "Fame";
    room_goto(rm_end_game);
}

// Check for gold victory
if (global.p1_gold >= 40) {
    //Player 1 has won a gold victory
    global.winner = "Player 1";
    global.win_type = "Gold";
    room_goto(rm_end_game);
} else if (global.p2_gold >= 40) {
    //Player 2 has won a gold victory
    global.winner = "Player 2";
    global.win_type = "Gold";
    room_goto(rm_end_game);
} else if (global.p3_gold >= 40) {
    //Player 3 has won a gold victory
    global.winner = "Player 3";
    global.win_type = "Gold";
    room_goto(rm_end_game);
}

// Update attack menu choices
global.attack_menu = ds_list_create();
 
if (global.current_player == 1) {
    global.currrent_class = global.p1_class;
    
    if (!global.p2_clicked) {
        ds_list_add(global.attack_menu, "Player 3: " + string(global.p3_health));
    } else if (!global.p3_clicked) {
        ds_list_add(global.attack_menu, "Player 2: " + string(global.p2_health));
    } else {
        ds_list_add(global.attack_menu, "Player 2: " + string(global.p2_health), "Player 3: " + string(global.p3_health));
    }
} else if (global.current_player == 2) {
    global.current_class = global.p2_class;
    
    if (!global.p1_clicked) {
        ds_list_add(global.attack_menu, "Player 3: " + string(global.p3_health));
    } else if (!global.p3_clicked) {
        ds_list_add(global.attack_menu, "Player 1: " + string(global.p1_health));
    } else {
        ds_list_add(global.attack_menu, "Player 1: " + string(global.p1_health), "Player 2: " + string(global.p2_health));
    }
} else if (global.current_player == 3) {
    global.current_class = global.p3_class;
    
    if (!global.p1_clicked) {
        ds_list_add(global.attack_menu, "Player 2: " + string(global.p2_health));
    } else if (!global.p2_clicked) {
        ds_list_add(global.attack_menu, "Player 1: " + string(global.p1_health));
    } else {
        ds_list_add(global.attack_menu, "Player 1: " + string(global.p1_health), "Player 2: " + string(global.p2_health));
    }
}


