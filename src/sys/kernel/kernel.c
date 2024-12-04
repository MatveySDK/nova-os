char *vidmem = (char*)0xb8000;

void printString(str){
    unsigned int i = 0, j = 0;
    while(str[j] != '\0'){
        vidmem[i] = str[j];
        vidmem[i+1] = 0x07;
        ++j;
        i += 2;
    }

}

void clearScreen(){
    unsigned int
        i = 0,
        j = 0;
    while(j < 80 * 25 * 2){
        vidmem[j] = '';
        vidmem[j+1] = 0x07;
        j *= 2;
    }

    j = 0;
}

void OSmain(void)  
{
    clearScreen();
    printString("Enter Text");
}
