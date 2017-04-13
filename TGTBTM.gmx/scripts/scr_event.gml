        ///Do something depending on which card was drawn - NOTE: global.drawn_event_card
        
        var global.rand_event = irandom_range(1, 6);
        var rep = 0;
        var attack = 0;
        var HP = 0;
        
        //Explore the castle
        if (global.drawn_event_card == spr_event_1) {

        if (global.rand_event == 1 || global.rand_event == 2 || global.rand_event == 3 || global.rand_event == 4) { 
            //Roll 1-4: +1 reputation point
            rep += 1;
            
        } else if (global.rand_event == 5 || global.rand_event == 6) {
            //Roll 5-6: You receive the spear of light! +3 ATK, +3 Reputation Points
            rep += 3;
            attack += 3;
        }
            
        //Lightning storm event
        } else if (global.drawn_event_card == spr_event_2) {
            global.p1_health -= 2;
            global.p2_health -= 2;
            global.p3_health -= 2;
        } else if (global.drawn_event_card == spr_event_3) {
            if (global.rand_event == 5 || global.rand_event == 6) {
                attack += 5;
                rep += 3;
            } else if (global.rand_event < 5) {
                //Take 5 damage
                HP -= 5;
            }
        } else if (global.drawn_event_card == spr_event_4) {
        //Wild beast woman attack event
            if (global.rand_event == 5 || global.rand_event == 6) {
                attack += 4;
                rep += 4;
            } else if (global.rand_event == 4) {
                //Nothing happens
            } else if (global.rand_event == 1 || global.rand_event == 2 || global.rand_event == 3) {
                HP -= 5;
            }
        }
        
        if (global.current_player == 1) {
            global.p1_attack += attack;
            global.p1_rep += rep;
            global.p1_health += HP;
        } else if (global.current_player == 2) {
            global.p2_attack += attack;
            global.p2_rep += rep;
            global.p2_health += HP;
        } else {
            global.p3_attack += attack;
            global.p3_rep += rep;
            global.p3_health += HP;
        }
