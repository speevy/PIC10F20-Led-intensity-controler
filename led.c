/*
 * File:   led.c
 * Author: ivan
 *
 * Created on March 22, 2018, 11:01 PM
 */


#include <xc.h>

unsigned char counter;
unsigned char duty;
unsigned char on;
unsigned int button_cnt;
unsigned char last;

#define BUTTON_CNT 0x400
#define BUTTON_CHECK_MASK 0x80
#define DUTY_CICLE_MAX 0x3F

const unsigned char duties[] = {
    0x00, 0x10, 0x1A, 0x24, 0x2A, 0x34, 0x38, 0x3A, 0x40
} ;

void init() {
    OSCCAL &= 0xFE;
    TRIS = 0b00001011;
    OPTION = 0b00011111;
    
    counter = 0;
    duty = 3;
    last = 0;
    button_cnt = 0;
    on = 1;
 }

unsigned char getButtons() {
    unsigned char current = (~GPIO) & 3;
    
    //No buttons pressed
    if (current == 0 || current != last) {
        button_cnt = 0;
        last = current;
        return 0;
    }
    
    if (current == last) {
        if (button_cnt < BUTTON_CNT) {
            button_cnt++;
        } else if (button_cnt == BUTTON_CNT) {
            button_cnt++;
            return current;
        }
    }

    return 0;
}

void check_buttons () {
    switch (getButtons()) {
        case 0 : 
            break;
        case 1:
            if (duty) duty--;
            break;
        case 2:
            if (duty < 8) duty++;
            break;
        case 3:
            on = !on;
            break;
    }

}
void main(void) {
    if (STATUSbits.nTO) init();
    
    for(;;counter = (counter+1) & DUTY_CICLE_MAX) {
        CLRWDT();
        
        GPIObits.GP2 = on && (counter >= duties[duty]);
        
        if ((counter & BUTTON_CHECK_MASK) == 0) {
            check_buttons();
        }
    }
    return;
}

