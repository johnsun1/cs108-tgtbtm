//Assume there are always 3 players in the game
//TO DO: Check how many players are in the game. Do not assume 3 players.
//Remove previous event or monster card
with (obj_event_card) {
    instance_destroy();
}
        
with(obj_monster_card) {
    instance_destroy();
}

//Remove a card form the monster card deck
card = ds_stack_pop(global.monster_deck);
        
//Display card on the table
displaycard = instance_create(130,440,card);
        
//Do something, depending on which card was drawn

//Roll dice for each player
global.p1_roll = irandom_range(1,6);
global.p2_roll = irandom_range(1,6);
global.p3_roll = irandom_range(1,6);

//Roll dice for beast
global.p1_opfor_roll = irandom_range(1,6);
global.p2_opfor_roll = irandom_range(1,6);
global.p3_opfor_roll = irandom_range(1,6);

global.p1_combat = 0;
global.p2_combat = 0;
global.p3_combat = 0;

//Determine the winner of each combat
if (global.p1_roll < global.p1_opfor_roll) {
//lose
} else {
//win
global.p1_combat = 1;
}

if (global.p2_roll < global.p2_opfor_roll) {
//lose
} else {
//win
global.p2_combat = 1;
}

if (global.p3_roll < global.p3_opfor_roll) {
//lose
} else { 
//win
global.p3_combat = 1;
}

//Lesser Magician
if (global.drawn_monster_card == spr_monster_1) {
    if (global.p1_combat == 1) { 
        global.p1_health += 2; global.p1_rep += 3; 
    } else {
        global.p1_health -= abs(global.p1_roll - global.p1_opfor_roll);
    }
    
    if (global.p2_combat == 2) { 
        global.p2_health += 2; global.p2_rep += 3; 
    } else {
        global.p2_health -= abs(global.p2_roll - global.p2_opfor_roll);
    }
    if (global.p3_combat == 3) {
        global.p3_health += 2; global.p3_rep += 3; 
    } else {
        global.p3_health -= abs(global.p3_roll - global.p3_opfor_roll);
    }
//Wild Bear
} else if (global.drawn_monster_card = spr_monster_2) {
    global.p1_health -= 2;
    global.p2_health -= 2;
    global.p3_health -= 2;
}
