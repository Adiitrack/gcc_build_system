/******************************************************************************
 * Copyright (C) 2017 by Alex Fosdick - University of Colorado
 *
 * Redistribution, modification or use of this software in source or binary
 * forms is permitted as long as the files maintain this copyright. Users are 
 * permitted to modify this and use it to learn about the field of embedded
 * software. Alex Fosdick and the University of Colorado are not liable for any
 * misuse of this material. 
 *
 *****************************************************************************/
/**
 * @file data.h
 * @brief Abstraction of memory read and write operations
 *
 * This header file provides an abstraction data manupulation via function calls. 
 *
 * @author ADITYA GAURAV
 * @date 17-09-2021
 *
 */

#include <data.h>
#include <stdbool.h>


uint8_t my_itoa(int32_t data, uint8_t * ptr, uint32_t base){
    bool isNegative = false;
    int idx = 0;

    if(data ==0){
        *ptr='0';
        *(ptr+1)='\0';
        return 1;
    }

    if(data < 0 ){
        isNegative = true;
        data= -data;
    }

    while(data){
        int rem = data % base;
        *(ptr+idx)=(rem > 9)? (data / base +'a') : rem + '0';
        data/=base;
        idx++;
    }
    if(isNegative){
        *(ptr+idx)='-';
        idx++;
    }
    *(ptr+idx)='\0';
    
    int start = 0;
    int end = idx -1;
    while (start < end)
    {   
        uint8_t temp = *(ptr+start);
        *(ptr+start)=  *(ptr+end);
        *(ptr+end) = temp;
        start++;
        end--;
    }

    return idx;
}


int32_t my_atoi(uint8_t * ptr, uint8_t digits, uint32_t base){
    int32_t num = 0;
    int isNegative = 1;
    int idx=0;
    if(digits == 0){
        return 0;
    }
    if(*ptr == '-'){
        isNegative = -1;
        idx++;
    }

    for (; *(ptr+idx) != '\0'; ++idx){ 
        num = (num * base) + val(*(ptr+idx));
    }
    return isNegative * num;
}

int val(char c) 
{ 
    if (c >= '0' && c <= '9') 
        return (int)c - '0'; 
    else
        return (int)c - 'A' + 10; 
}