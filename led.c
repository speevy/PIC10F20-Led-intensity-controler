/*
 * File:   led.c
 * Author: ivan
 *
 * Created on March 22, 2018, 11:01 PM
 */


#include <xc.h>

unsigned char counter;
unsigned char duty;
unsigned int button_cnt;
unsigned char last;

// Constants for button bouncing filtering
#define BUTTON_CNT 0x400
#define BUTTON_CHECK_MASK 0x80

/*
 * Duty cicles definition
 * Able to define as many steps as wanted
 * value: 0 -> off, > DUTY_CICLE_MAX -> full power
 * first value: min, last value: max
 */
#define DUTY_CICLE_MAX 0x3F
const unsigned char duties[] = {
    0x00, 0x02, 0x04, 0x10, 0x20, 0x40
} ;
const unsigned char n_duties = sizeof(duties) - 1;

void init() {
    OSCCAL &= 0xFE;
    TRIS = 0b00001011;
    OPTION = 0b00011111;
    
    counter = 0;
    duty = 0;
    last = 0;
    button_cnt = 0;
 }

/*
 * Button bouncing filter and conversion to flank
 */
unsigned char getButtons() {
    unsigned char current = (~GPIO) & 3;
    
    //No buttons pressed
    if (current == 0 || current != last) {
        button_cnt = 0;
        last = current;
        return 0;
    }
    
    // Button bouncing filter
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

/*
 * Actions to do on button press
 */
void check_buttons () {
    switch (getButtons()) {
        case 1: // DOWN
            if (duty) duty--;
            break;
        case 2: // UP
            if (duty < n_duties) duty++;
            break;
        case 3: // BOTH
            if (duty == 0) {
                duty = n_duties - 1;
            } else {
                duty = 0;
            }
            break;
    }

}
void main(void) {
    if (STATUSbits.nTO) 
        init();
    
    for(;;counter = (counter+1) & DUTY_CICLE_MAX) {
        CLRWDT();
        
        GPIObits.GP2 = counter < duties[duty];
        
        if ((counter & BUTTON_CHECK_MASK) == 0) {
            check_buttons();
        }
    }
    return;
}

