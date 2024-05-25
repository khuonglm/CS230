/* 
 * CS:APP Data Lab 
 * 
 * <Please put your name and userid here>
 * Student Name: Le Manh Khuong
 * Student ID: 20220834
 * 
 * bits.c - Source file with your solutions to the Lab.
 *          This is the file you will hand in to your instructor.
 *
 * WARNING: Do not include the <stdio.h> header; it confuses the dlc
 * compiler. You can still use printf for debugging without including
 * <stdio.h>, although you might get a compiler warning. In general,
 * it's not good practice to ignore compiler warnings, but in this
 * case it's OK.  
 */

#if 0
/*
 * Instructions to Students:
 *
 * STEP 1: Read the following instructions carefully.
 */

You will provide your solution to the Data Lab by
editing the collection of functions in this source file.

INTEGER CODING RULES:
 
  Replace the "return" statement in each function with one
  or more lines of C code that implements the function. Your code 
  must conform to the following style:
 
  int Funct(arg1, arg2, ...) {
      /* brief description of how your implementation works */
      int var1 = Expr1;
      ...
      int varM = ExprM;

      varJ = ExprJ;
      ...
      varN = ExprN;
      return ExprR;
  }

  Each "Expr" is an expression using ONLY the following:
  1. Integer constants 0 through 255 (0xFF), inclusive. You are
      not allowed to use big constants such as 0xffffffff.
  2. Function arguments and local variables (no global variables).
  3. Unary integer operations ! ~
  4. Binary integer operations & ^ | + << >>
    
  Some of the problems restrict the set of allowed operators even further.
  Each "Expr" may consist of multiple operators. You are not restricted to
  one operator per line.

  You are expressly forbidden to:
  1. Use any control constructs such as if, do, while, for, switch, etc.
  2. Define or use any macros.
  3. Define any additional functions in this file.
  4. Call any functions.
  5. Use any other operations, such as &&, ||, -, or ?:
  6. Use any form of casting.
  7. Use any data type other than int.  This implies that you
     cannot use arrays, structs, or unions.

 
  You may assume that your machine:
  1. Uses 2s complement, 32-bit representations of integers.
  2. Performs right shifts arithmetically.
  3. Has unpredictable behavior when shifting an integer by more
     than the word size.

EXAMPLES OF ACCEPTABLE CODING STYLE:
  /*
   * pow2plus1 - returns 2^x + 1, where 0 <= x <= 31
   */
  int pow2plus1(int x) {
     /* exploit ability of shifts to compute powers of 2 */
     return (1 << x) + 1;
  }

  /*
   * pow2plus4 - returns 2^x + 4, where 0 <= x <= 31
   */
  int pow2plus4(int x) {
     /* exploit ability of shifts to compute powers of 2 */
     int result = (1 << x);
     result += 4;
     return result;
  }

FLOATING POINT CODING RULES

For the problems that require you to implent floating-point operations,
the coding rules are less strict.  You are allowed to use looping and
conditional control.  You are allowed to use both ints and unsigneds.
You can use arbitrary integer and unsigned constants.

You are expressly forbidden to:
  1. Define or use any macros.
  2. Define any additional functions in this file.
  3. Call any functions.
  4. Use any form of casting.
  5. Use any data type other than int or unsigned.  This means that you
     cannot use arrays, structs, or unions.
  6. Use any floating point data types, operations, or constants.


NOTES:
  1. Use the dlc (data lab checker) compiler (described in the handout) to 
     check the legality of your solutions.
  2. Each function has a maximum number of operators (! ~ & ^ | + << >>)
     that you are allowed to use for your implementation of the function. 
     The max operator count is checked by dlc. Note that '=' is not 
     counted; you may use as many of these as you want without penalty.
  3. Use the btest test harness to check your functions for correctness.
  4. Use the BDD checker to formally verify your functions
  5. The maximum number of ops for each function is given in the
     header comment for each function. If there are any inconsistencies 
     between the maximum ops in the writeup and in this file, consider
     this file the authoritative source.

/*
 * STEP 2: Modify the following functions according the coding rules.
 * 
 *   IMPORTANT. TO AVOID GRADING SURPRISES:
 *   1. Use the dlc compiler to check that your solutions conform
 *      to the coding rules.
 *   2. Use the BDD checker to formally verify that your solutions produce 
 *      the correct answers.
 */


#endif
/* Copyright (C) 1991-2018 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <http://www.gnu.org/licenses/>.  */
/* This header is separate from features.h so that the compiler can
   include it implicitly at the start of every compilation.  It must
   not itself include <features.h> or any other header that includes
   <features.h> because the implicit include comes before any feature
   test macros that may be defined in a source file before it first
   explicitly includes a system header.  GCC knows the name of this
   header in order to preinclude it.  */
/* glibc's intent is to support the IEC 559 math functionality, real
   and complex.  If the GCC (4.9 and later) predefined macros
   specifying compiler intent are available, use them to determine
   whether the overall intent is to support these features; otherwise,
   presume an older compiler has intent to support these features and
   define these macros by default.  */
/* wchar_t uses Unicode 10.0.0.  Version 10.0 of the Unicode Standard is
   synchronized with ISO/IEC 10646:2017, fifth edition, plus
   the following additions from Amendment 1 to the fifth edition:
   - 56 emoji characters
   - 285 hentaigana
   - 3 additional Zanabazar Square characters */
/* We do not support C11 <threads.h>.  */

/* 
 * isAscii - return 1 if 0x30 <= x <= 0x39 (ASCII codes for characters '0' to '9')
 *   Example: isAscii(0x35) = 1.
 *            isAscii(0x3a) = 0.
 *            isAscii(0x05) = 0.
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 15
 *   Rating: 3
 */
int isAscii(int x) {
  /*
    Divide x into 2 parts abcdefgh, abcd must be equal to 0x03,
    and if e == 1 -> f, g must be 0
  */
  return !(x >> 4 ^ 0x03) & (!(x & 0x08) | !(x & 0x06));
}

/* 
 * fourthBits - return word with every fourth bit (starting from the LSB) set to 1
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 8
 *   Rating: 1
 */
int fourthBits(void) {
  /*
    Note: a set of 4 cont bits is 1 in hex (so confusing)
    Divide the number into 4 parts, each part is 0x11 
    and concatenate them using shift ops
  */
  return (0x11 << 24) | (0x11 << 16) | (0x11 << 8) | 0x11;
}

/*
 * countOneBits - returns count of number of 1's in word
 *   Examples: countOneBits(5) = 2, countOneBits(7) = 3
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 40
 *   Rating: 4
 */
int countOneBits(int x) {
  /*
    we use divide and conquer to count
    sum of 2 cont bits -> sum of 4 cont bits -> so on
    example: 00110110 -> 00|10|01|01 -> 0010|0010 -> 00000100
    due to the constraints in the constant, 
    we have to create and concat like above function
  */
  int and1 = (0x55 << 24) | (0x55 << 16) | (0x55 << 8) | 0x55;
  int and2 = (0x33 << 24) | (0x33 << 16) | (0x33 << 8) | 0x33;
  int and4 = (0x0f << 24) | (0x0f << 16) | (0x0f << 8) | 0x0f;
  x = (x & and1) + ((x >> 1) & and1);
  x = (x & and2) + ((x >> 2) & and2);
  x = (x + (x >> 4)) & and4;
  x = x + (x >> 8);
  x = x + (x >> 16);
  return x & 0x3f;
}

/* 
 * countPattern - returns the number of found "1111" in the given number x
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 80
 *   Rating: 6
 */
int countPattern(int x) {
  /*
    count number of 1111 in the bit representatino of x
    exp: 0b0111110 -> 2
    0b0...011110

    Firstly, I will count the number of position where 
    two consecutive 1's bit in the even position 
    like 1110 -> 0100 => if (i, i + 1) = 11 -> (i, i + 1) = 01 otherwise 00
    then, use that to count 4 consecutive 1's bit in the same way 1111 -> 0001
    after that count the number of bit like the above function
    Do one more time with the odd position
    I think we still can reduce the number of ops with this approach
  */
  int and1 = (0x55 << 24) | (0x55 << 16) | (0x55 << 8) | 0x55;
  int xand1 = (x & and1) + ((x >> 1) & and1);
  int x2 = (xand1 << 1) & and1;
  int xand2 = ((x2 + (x2 >> 2)) << 1) & and1;
  int and2 = (0x33 << 24) | (0x33 << 16) | (0x33 << 8) | 0x33;
  int and4 = (0x0f << 24) | (0x0f << 16) | (0x0f << 8) | 0x0f;
  int res;
  xand2 = (xand2 & and2) + ((xand2 >> 2) & and2);
  xand2 = (xand2 + (xand2 >> 4)) & and4;
  xand2 = xand2 + (xand2 >> 8);
  xand2 = xand2 + (xand2 >> 16);
  res = xand2 & 0x3f;
  xand1 = ((x >> 1) & and1) + ((x >> 2) & and1);
  x2 = (xand1 << 1) & and1;
  xand2 = ((x2 + (x2 >> 2)) << 1) & and1;
  xand2 = (xand2 & and2) + ((xand2 >> 2) & and2);
  xand2 = (xand2 + (xand2 >> 4)) & and4;
  xand2 = xand2 + (xand2 >> 8);
  xand2 = xand2 + (xand2 >> 16);
  return res + (xand2 & 0x3f);
}

/* 
 * subOverflowFree - Determine if can compute x-y without overflow
 *   Example: subOverflowFree(0x80000000,0x80000000) = 1,
 *            subOverflowFree(0x80000000,0x70000000) = 0, 
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 20
 *   Rating: 3
 */
int subOverflowFree(int x, int y) {
  /*
    if the sign of x and -y is the same 
    -> sign of x - y must be the same
  */
  int sx = (x >> 31);
  int negy = (~y + 1);
  int sy = (y >> 31);
  int snegy = ~sy;
  int sxy = ((x + negy) >> 31);
  return !(~(sx ^ snegy) & (sx ^ sxy)) | !(x ^ y);
}

/*
 * mulSevenSixteenth - multiply by 7/16 rounding toward 0, avoiding overflow.
 *    Examples: mulSevenSixteenth(22) = 9
 *    mulSevenSixteenth(0x40000000) = 469762048 (no overflow)

 *    Legal ops: ! ~ & ^ | + << >>
 *    Max ops: 25
 *    Rating: 4
 */
int mulSevenSixteenth(int x) {
  /*
    x = q * 16 + r => x * 7 / 16 = q * 7 + r * 7 / 16
  */
  int s = (x >> 31) & 1;
  int offset = (s << 4) + (~s + 1);
  int div16 = (x + offset) >> 4;
  int rem = x + (~(div16 << 4) + 1);
  rem = (rem << 2) + (rem << 1) + rem;
  rem = (rem + offset) >> 4;
  return (div16 << 2) + (div16 << 1) + div16 + rem;
}

/* 
 * sm2tc - Convert from sign-magnitude to two's complement
 *   where the MSB is the sign bit
 *   Example: sm2tc(0x80000005) = -5.
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 15
 *   Rating: 4
 */
int sm2tc(int x) {
  /*
    ss will be 00000000 if sign is 0 or 11111111 if sign is 1
    we use ss to negate x when sign is 1
    sign is stored in s
  */
  int ss = x >> 31;
  int s = ~ss + 1;
  int y = (((x ^ ss) + s) ^ (s << 31));
  return y;
}

/* 
 * float_abs - Return bit-level equivalent of absolute value of f for
 *   floating point argument f.
 *   Both the argument and result are passed as unsigned int's, but
 *   they are to be interpreted as the bit-level representations of
 *   single-precision floating point values.
 *   When argument is NaN, return argument..
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. also if, while
 *   Max ops: 10
 *   Rating: 4
 */
unsigned float_abs(unsigned uf) {
  /*
    check if the number is NaN -> return uf
    otherwise just replace the sign bit by 0 if it is 1
  */
  int s = (uf >> 31);
  int exp = (uf >> 23) & 0xff; 
  int rem = uf & 0x7fffff;
  if(exp == 0xff && rem != 0) return uf;
  return uf ^ (s << 31);
}

/* 
 * integer_to_float - Return bit-level equivalent of expression (float) x
 *   Result is returned as unsigned int, but
 *   it is to be interpreted as the bit-level representation of a
 *   single-precision floating point values.
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. also if, while
 *   Max ops: 30
 *   Rating: 6
 */
unsigned integer_to_float(int x) {
  /*
    take the absolute value and convert abs(x) to float 
    like unsigned to float in the lecture note
  */
  int i = 31, j = 32;
  int exp, frac, round;
  int guard, sticky;
  int res = x & (1 << 31);
  if(x == 0) return x;
  if(x < 0) x = -x;
  while(j) {
    if(x >> i & 1) {
      exp = i;
      break;
    }
    j = i;
    --i;
  }
  frac = x << (31 - exp);
  exp += 127;
  sticky = frac & 0x7f;
  round = frac & (1 << 7);
  guard = frac & (1 << 8);
  frac = (frac >> 8) & 0xffffff;
  if(round) {
    if(sticky || guard) ++frac;
  }
  if(frac >> 24 & 1) ++exp, frac >>= 1;
  res = res | (exp << 23) | (frac & 0x7fffff);
  return res;
}

/* 
 * real_quarter - Return bit-level equivalent of expression 0.25*f for
 *   floating point argument f.
 *   Both the argument and result are passed as unsigned int's, but
 *   they are to be interpreted as the bit-level representation of
 *   single-precision floating point values.
 *   When argument is NaN, return argument
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. also if, while
 *   Max ops: 30
 *   Rating: 8
 */
unsigned real_quarter(unsigned uf) {
  /*
    0x3e800000, sign = 0, exponent = 0x7d, fraction = 0x000000
    multiple by 2^(-2)
    important note: addition with remainder 
    (round up condition in lecture note)
  */
  int exp = (uf >> 23) & 0xff;
  int frac = uf & 0x7fffff;
  int s = uf & (1 << 31);
  int nexp = exp - 2;
  int rem;
  if(exp == 255 || !uf) return uf;
  if(exp < 2) {
    rem = frac & 0x3;
    if(exp == 0) frac = (frac >> 2);
    else frac = (uf >> 2) & 0x7fffff;
    if(rem >= 3 || (rem >= 2 && (frac & 1))) ++frac;
    return s | frac;
  } else {
    return s | (nexp << 23) | frac;
  }
}