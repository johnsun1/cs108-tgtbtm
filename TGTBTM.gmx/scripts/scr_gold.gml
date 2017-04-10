//Assume there are always 3 players in the game
//TO DO: Check how many players are in the game. Do not assume 3 players.
//Remove previous event or monster card
        
with(obj_gold_card) {
    instance_destroy();
}

//Remove a card form the gold card deck
card = ds_stack_pop(global.gold_deck);
        
//Display card on the table
displaycard = instance_create(510,150,card);
        
//Do something, depending on which card was drawn
if (global.drawn_gold_card == spr_gold_0) {
    gold_amount = 0;
} else if (global.drawn_gold_card = spr_gold_5) {
    gold_amount = 5;
} else if (global.drawn_gold_card = spr_gold_10) {
    gold_amount = 10;
}

global.p1_gold += gold_amount;
global.p2_gold += gold_amount;
global.p3_gold += gold_amount;
