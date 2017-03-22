        //TO DO: Do something depending on which card was drawn NOTE: global.drawn_event_card
        if (global.drawn_event_card == spr_event_1) {
            if (global.current_player == 1) {
              global.p1_attack += 3;
              global.p1_rep += 3;
            } else if (global.current_player == 2) {
              global.p2_attack += 3;
              global.p2_rep += 3;
            } else {
              global.p3_attack += 3;
              global.p3_rep += 3;
            }
        } else if (global.drawn_event_card == spr_event_2) {
            global.p1_health -= 2;
            global.p2_health -= 2;
            global.p3_health -= 2;
        }
