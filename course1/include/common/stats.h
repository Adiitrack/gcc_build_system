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
 * @file stats.h 
 * @brief This function take an array of unsigned char data as input and 
 *        report analytics on the maximum, minumum, mean, and median of the data set.
 *
 * 
 *
 * @author ADITYA GAURAV
 * @date 17-09-2021
 *
 */
#ifndef __STATS_H__
#define __STATS_H__


/**
 * @brief Prints statistics of array
 *
 * This function takes n elements and prints mean, median,maximum and minimum of all elements
 *
 * @param test A unsigned char pointer to an n-element data array
 * @param length An unsigned integer as the size of the array
 *
 * @return void
 */
void print_statistics(unsigned char *test,unsigned int length);


/**
 * @brief print array
 *
 * prints all elements of array 
 *
 * @param test A unsigned char pointer to an n-element data array
 * @param length An unsigned integer as the size of the array
 *
 * @return void
 */
void print_array(unsigned char *test, unsigned int length);


/**
 * @brief find median of n-elements
 *
 * This function takes n-elements and return median of n elements.
 *
 * @param test A unsigned char pointer to an n-element data array
 * @param length An unsigned integer as the size of the array
 *
 * @return return median of n-elements
 */
unsigned char find_median(unsigned char *test, unsigned int length);


/**
 * @brief find mean of n-elements
 *
 * This function takes n-elements and return mean of n elements.
 *
 * @param test A unsigned char pointer to an n-element data array
 * @param length An unsigned integer as the size of the array
 *
 * @return return mean of n-elements
 */
unsigned char find_mean(unsigned char *test, unsigned  int length);


/**
 * @brief find maximum of n-elements
 *
 * This function takes n-elements and return maximum of n elements.
 *
 * @param test A unsigned char pointer to an n-element data array
 * @param length An unsigned integer as the size of the array
 *
 * @return return maximum of n-elements
 */
unsigned char find_maximum(unsigned char *test,unsigned  int length);


/**
 * @brief find minimum of n-elements
 *
 * This function takes n-elements and return minimum of n elements.
 *
 * @param test A unsigned char pointer to an n-element data array
 * @param length An unsigned integer as the size of the array
 *
 * @return return minimum of n-elements
 */
unsigned char find_minimum(unsigned char *test,unsigned  int length);


/**
 * @brief Sort an array 
 * 
 * This function sort array from largest to smallest.
 *
 * @param test A unsigned char pointer to an n-element data array
 * @param length An unsigned integer as the size of the array
 *
 * @return void
 */
void sort_array(unsigned char *test,unsigned int length);

#endif /* __STATS_H__ */
