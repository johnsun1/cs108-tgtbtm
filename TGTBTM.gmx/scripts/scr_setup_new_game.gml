///Set up new game
global.rand_event = 0; //default roll value
        
//Check how many players are playing
if (!global.p1_clicked) {
    //No player in slot 1, set dummy values
        global.p1_id = 0;
        global.p1_class = "None";
        global.p1_health = 0;
        global.p1_attack = 0;
        global.p1_gold = 0;
        global.p1_rep = 0;
} else if (!global.p2_clicked) {
    //No player in slot 2, set dummy values
        global.p2_id = 0;
        global.p2_class = "None";
        global.p2_health = 0;
        global.p2_attack = 0;
        global.p2_gold = 0;
        global.p2_rep = 0;
} else if (!global.p3_clicked) {
    //No player in slot 3, set dummy values
        global.p3_id = 0;
        global.p3_class = "None";
        global.p3_health = 0;
        global.p3_attack = 0;
        global.p3_gold = 0;
        global.p3_rep = 0;
}

global.winner = "None"; //Variable for holding the name of the winner
global.win_type = "None"; //Variable for holding the type of victory

// Establish class of current player
global.current_class = global.p1_class;
global.current_player = global.p1_id; /// The player that goes first is always player 1

// If the current player is a Banker, grant them some gold
if (global.current_player == "Banker") {
    global.p1_gold += choose(0, 5, 10);
}
