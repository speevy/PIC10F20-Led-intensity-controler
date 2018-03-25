/*
 * File:   led.c
 * Author: ivan
 *
 * Created on March 22, 2018, 11:01 PM
 */


#include <xc.h>

void main(void) {
    unsigned char counter;
    unsigned char duty;
    unsigned char last;
    unsigned char on;
    unsigned char on_cnt;
    OSCCAL &= 0xFE;
    TRIS = 0b00001011;
    OPTION = 0b00011111;
    if (STATUSbits.nTO) {
        counter = 0;
        duty = 0x30;
        last = GPIO & 3;
        on = 1;
        on_cnt = 0;
    } else if (duty > 0x80) {
        duty = 0x30;
    } 
    
    for(;;counter = (counter+1) & 0x7F) {
        unsigned char buttons = last & ~GPIO;
        last = GPIO & 3;
        if (!last) {
            if (on_cnt < 0x40) {
                on_cnt++;
            } else if (on_cnt == 0x40) {
                if (on) {
                    on = 0;
                } else {
                    on = 1;
                }
                on_cnt ++;
            }
        } else {
            on_cnt = 0;
            if ((buttons & 2) && (duty < 0x80)) {
                duty+=0x10;
            } else if ((buttons & 1) && duty) {
                duty-=0x10;
            }
        }
        GPIObits.GP2 = on && (counter >= duty);
    }
    return;
}
