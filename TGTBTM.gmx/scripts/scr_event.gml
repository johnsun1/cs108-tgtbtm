        ///Do something depending on which card was drawn - NOTE: global.drawn_event_card
        
        //Explore the castle
        if (global.drawn_event_card == spr_event_1) {
        var rand = irandom_range(1, 6);
        var rep = 0;
        var attack = 0;

        if (rand == 1) { 
            //Roll 1: Lose a turn
            
        } else if (rand == 3 || rand == 4) {
            //Roll 3-4: +1 reputation point
            rep += 1;
        } else if (rand == 5 || rand == 6) {
            //Roll 5-6: You receive the spear of light! +3 ATK, +3 Reputation Points
            rep += 3;
            attack += 3;
        }
            if (global.current_player == 1) {
              global.p1_attack += attack;
              global.p1_rep += rep;
            } else if (global.current_player == 2) {
              global.p2_attack += attack;
              global.p2_rep += rep;
            } else {
              global.p3_attack += attack;
              global.p3_rep += rep;
            }
        //Lightning storm
        } else if (global.drawn_event_card == spr_event_2) {
            global.p1_health -= 2;
            global.p2_health -= 2;
            global.p3_health -= 2;
        }
