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
displaycard = instance_create(192,320,card);
        
//Do something, depending on which card was drawn
if (global.drawn_monster_card == spr_monster_1) {
    global.p1_health -= 5;
    global.p2_health -= 5;
    global.p3_health -= 5;
} else if (global.drawn_monster_card = spr_monster_2) {
    global.p1_health -= 2;
    global.p2_health -= 2;
    global.p3_health -= 2;
}
