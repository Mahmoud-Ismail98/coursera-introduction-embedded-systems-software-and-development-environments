/******************************************************************************
 * Redistribution, modification or use of this software in source or binary
 * forms is permitted as long as the files maintain this copyright. Users are 
 * permitted to modify this and use it to learn about the field of embedded
 * software. Alex Fosdick and the University of Colorado are not liable for any
 * misuse of this material. 
 *
 *****************************************************************************/
/**
 * @file course1.h 
 * @brief This file is to be used to course 1 final assessment.
 
 */
#ifndef __COURSE1_H__
#define __COURSE1_H__

#include <stdint.h>

#define DATA_SET_SIZE_W (10)
#define MEM_SET_SIZE_B  (32)
#define MEM_SET_SIZE_W  (8)
#define MEM_ZERO_LENGTH (16)

#define TEST_MEMMOVE_LENGTH (16)
#define TEST_ERROR          (1)
#define TEST_NO_ERROR       (0)
#define TESTCOUNT           (8)


enum base{BASE_2=2, BASE_10=10, BASE_16=16};

/**
 * @brief Overall function used to call subfunctions to test all the functionality
 *          of the course1 final assessment.
 * 
 * @return int8_t Returns 1 if successful, else 0
 */
int8_t course1();

/**
 * @brief This function will test atoi and itoa conversions
 * 
 * @return int8_t Returns 1 if successful, else 0
 */
int8_t test_data1();

/**
 * @brief This function will test itoa and atoi conversions
 * 
 * @return int8_t Returns 1 if successful, else 0
 */
int8_t test_data2();

/**
 * @brief This function will test non-overlapped memmove.
 * 
 * @return int8_t Returns 1 if successful, else 0
 */
int8_t test_memmove1();

/**
 * @brief This function will test overlapped memmove where there is overlap of
 *          the end of destination and start of the source regions.
 * 
 * @return int8_t Returns 1 if successful, else 0
 */
int8_t test_memmove2();

/**
 * @brief This function will test overlapped memmove where there is overlap of the
 *          start of destination and end of the source regions.
 * 
 * @return int8_t Returns 1 if successful, else 0
 */
int8_t test_memmove3();

/**
 * @brief This function will test memcopy.
 * 
 * @return int8_t Returns 1 if successful, else 0
 */
int8_t test_memcopy();

/**
 * @brief This function will test memset and memzero.
 * 
 * @return int8_t Returns 1 if successful, else 0
 */
int8_t test_memset();

/**
 * @brief This function will test reverse.
 * 
 * @return int8_t Returns 1 if successful, else 0
 */
int8_t test_reverse();


#endif /* __COURSE1_H__ */

