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
 * @file stats.c
 * @brief This program calculate & prints maximum, minimum, mean, and median of n-elements
 *
 * this program takes a set of n-elements and calculate maximum, minimum , mean and median of all
 * elements and sort elements from greater to lowest. 
 *
 * @author ADITYA GAURAV
 * @date 17-09-2021
 *
 */



#include <stdio.h>
#include "stats.h"

/* Size of the Data Set */
#define SIZE (40)

void mainn() {

  unsigned char test[SIZE] = { 34, 201, 190, 154,   8, 194,   2,   6,
                              114, 88,   45,  76, 123,  87,  25,  23,
                              200, 122, 150, 90,   92,  87, 177, 244,
                              201,   6,  12,  60,   8,   2,   5,  67,
                                7,  87, 250, 230,  99,   3, 100,  90};

  // Print Maximum, minimum, mean and median
  print_statistics(test, SIZE);

  //sort elements from large to small
  sort_array(test, SIZE);

  // print array on screen
  print_array(test, SIZE);

}


void print_statistics(unsigned char *test,unsigned int length){
  unsigned char mxElement = find_maximum(test, SIZE);
  PRINTF("Maximum of all n-elements is %d\n", mxElement);
 
  unsigned char mnElement = find_minimum(test, SIZE);
  PRINTF("Minimum of all n-elements is %d\n", mnElement); 

  unsigned char meanElement = find_mean(test, SIZE);
  PRINTF("Mean of all n-elements is %d\n", meanElement); 

  unsigned char medianElement = find_median(test, SIZE);
  PRINTF("Median of all n-elements is %d\n", medianElement); 
}


void print_array(unsigned char *test, unsigned int length){
  #ifdef VERBOSE
  PRINTF("Elements in the sorted order is :-  \n");
  for(unsigned int i=0; i< length ; i++){
      PRINTF("%d ",*(test+i));
  }
  PRINTF("\n");
  #endif
}

unsigned char find_median(unsigned char *test, unsigned int length){
  sort_array(test, SIZE);
  float median = 0;
  if(length % 2 ==0){
       int num1 = (test[(length-1)/2]);
       int num2 = (test[length/2]);
       median = (num1 + num2) /2;
  }else{
 	median =  (test[length/2]);
  }
  return (unsigned char)median;
}


unsigned char find_mean(unsigned char *test, unsigned  int length){
  unsigned int sum = 0;
  for(unsigned int i=0 ; i<length; i++){
	sum += (unsigned int)test[i];
  }
return (unsigned char) (sum/length);
}


unsigned char find_maximum(unsigned char *test,unsigned  int length){
  unsigned char a = *test;
  for(unsigned int i=0 ; i<length; i++){
          if(a < *(test+i)){
	     a = *(test+i);
	  }
  }
  return a;
}


unsigned char find_minimum(unsigned char *test,unsigned  int length){
  unsigned char a = *test;
  for(unsigned int i=0 ; i<length; i++){
          if(a > *(test+i)){
	     a = *(test+i);
	  }
  }
  return a;
}


void sort_array(unsigned char *test,unsigned int length){
  for(unsigned int i=0 ; i<length; i++){
      for(unsigned int j=i+1 ; j<length; j++){
          if(*(test+i) < *(test+j)){
	      unsigned char a = *(test+i);
	      *(test+i) = *(test+j);
	      *(test+j) = a;
	  }
      }
  }
}
