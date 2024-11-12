# C_and_Assembly_Exercises
This repository hosts a collection of exercises in **Assembly** and **C**, designed to strengthen low-level programming skills. Topics include memory management, processor instructions, and foundational computer science concepts. Ideal for students and developers looking to deepen their understanding of systems programming and embedded systems.

## Module 2

### Exercises
2. Change the function `void sum` in the previous exercise to `int sum()`. The returned value should be stored in a local variable of the main function. In other words, the `res` variable is no longer needed.

3. Add an assembly function `long another_sum()` to the previous exercise to perform the following operation:
   `(CONST - op1) + (CONST - op2) + CONST`.
   `CONST` should be a constant with the value 20 declared in the Assembly module.

4. Add an assembly function `long yet_another_sum()` to the previous exercise to perform the following operation:
   `op4 + op3 - op2 - op2 + op1 - op4`, adding the needed variables to your program.
   The variables `op3` and `op4` should be declared in Assembly with type `quad`, but should also be accessible from C.
   To print a signed 64 bits variable, use the `"%ld"` specifier. For unsigned longs, use the `"%lu"` specifier. More information can be found at [man7.org](http://man7.org/linux/man-pages/man3/printf.3.html).

5. Add a function `short swapBytes()` to the previous exercise. This function, that must be implemented in Assembly, reads a short `s1`, and exchanges the two bytes of the short.

6. Create a new program to manipulate short values. Implement, in Assembly, the function `short exchangeBytes()`. This function manipulates the bytes of two 16-bit variables, `op1` and `op2`. The most significant byte of `op2` becomes the new least significant byte. Also, the new most significant byte should be twice the value of the previous least significant byte of `op1`. The function should return the new short value.
   To print a signed 16 bits variable, use the `"%hd"` specifier. For unsigned shorts, use the `"%hu"` specifier. More information can be found at [man7.org](http://man7.org/linux/man-pages/man3/printf.3.html).

7. Add a function `short crossSubBytes()` to the previous exercise. This function, that must be implemented in Assembly, subtracts two short values, short `s1` and short `s2`, in a crossed fashion. The function should subtract to the most significant byte `s1` the least significant byte of `s2` and vice-versa. The computed result should be returned in a single short.

8. Repeat the previous exercise but, this time, the needed variables must be declared in Assembly.

9. Implement an Assembly function `long sum_and_subtract()` to perform the following operation:
   `C - A + D - B`. A is a 32-bit variable, B is an 8-bit variable, while C and D are both 16-bit variables. The function should return a 64-bit value that must be printed in C.

10. Implement an Assembly function `long long sum3ints()` to perform the following operation:
    `op1 + op2 + op3` (all 32-bit values declared in C). The function should return a 64-bit value that must be printed in C.

11. Create an Assembly function `char verify_flags()` that sums two 16-bit variables, short `op1` and short `op2`, and checks if such operation activates the carry and overflow flags. The function should return 1 if any of those flags are activated, or 0 otherwise. Test the function with several values and show the obtained results accordingly.

12. Implement an Assembly function `char isMultiple()` to check if the number A is a multiple of B. The function should return 1 if that is the case, or 0 otherwise. Both A and B should be long values declared in C.

13. Implement an Assembly function `int getArea()` to compute the area of a trapeze. The lengths and height of the trapeze are stored in three short variables declared in C: `short length1`, `short length2`, and `short height`, respectively.
    `area = (length1 + length2) * height / 2`

14. Repeat the previous exercise, but this time the lengths and height of the trapeze are stored in three integer variables, `length1`, `length2`, and `height`, declared in Assembly, but also accessible from C. The computed result should be printed in C.

15. Create an assembly function `int compute()` to perform the following operation (all 32-bit variables): `((A * B) - C * A) / D`.

16. Implement a function `int steps()` that, given a number (a 64-bit integer value stored in variable `long num`), computes its result according to the following set of successive steps:
    a) Divides by 3
    b) Adds 6
    c) Multiplies by 3
    d) Adds 12
    e) Subtracts num
    f) Subtracts 4
   The obtained result should be printed in C.

17. Implement a basic calculator with support for the following integer arithmetic operations: sum, subtraction, multiplication, division, modulus, powers of 2 and 3. Each of these operations should be implemented in a separate function in Assembly. The integer operands should be declared in C, while the computed result should be a 32-bit value declared in Assembly.

18. Create an Assembly function `int sigma()` to perform the following operation:
    \[
    \sum_{i=1}^{n} i^2 * \frac{A^3}{B}
    \]
    A and B should be constants defined in Assembly (with the values 3 and 4), while n should be an int declared in C.

19. Consider that the air conditioning system "HotCold" needs:
    - four minutes to decrease one Celsius degree;
    - three minutes to increase one Celsius degree.
   Create an Assembly function `short needed_time()` that, given the current and the desired temperatures, computes the time (in seconds) required to change to the desired temperature. `current` and `desired` should be 8-bit variables. The function should return the computed result as a 16-bit value.

20. Create an Assembly function `char check_num()` that, given a 16-bit variable (`num`), returns:
    - 1, if `num` is even and negative;
    - 2, if `num` is odd and negative;
    - 3, if `num` is even and positive (without sign);
    - 4, if `num` is odd and positive (without sign).

21. Your company will raise the salary of its employees according to the following table:

| Code | Position     | Raise in Salary |
|------|--------------|------------------|
| 10   | Manager      | 500 euros        |
| 11   | Engineer     | 400 euros        |
| 12   | Technician   | 300 euros        |
| All other codes | All other positions | 250 euros |

   Create an Assembly function `int new_salary()` that, given two 16-bit variables (`code` and `currentSalary`) declared in C, returns the new salary.

22. Code all these functions in Assembly and C. Compare the obtained results.

```c
int f(){
    if (i == j)
        h = i - j + 1;
    else
        h = i + j - 1;
    return h;
}

int f2(){
    if (i > j)
        i = i - 1;
    else
        j = j + 1;
    h = j * i;
    return h;
}

int f3(){
    if (i >= j) {
        h = i * j;
        g = i + 1;
    } else {
        h = i + j;
        g = i + j + 2;
    }
    r = g / h;
    return r;
}

int f4(){
    if (i + j < 10)
        h = 4 * i * i;
    else
        h = j * j / 3;
    return h;
}
```
## Module 3

### Exercises

1. Implement a function `int five_count(char* ptr)` that returns the number of
five `chars (’5’)` in a string pointed by ptr.

2. Implement a function `void str_copy_roman(char* ptr1, char* ptr2)` that copies the string pointed by ptr1 to the string pointed by ptr2, replacing each occurrence of the character `’u’ by ’v’`, considering lower case characters only.

3. Implement a function `void str_copy_roman2(char* ptr1, char* ptr2)` that copies the string pointed by ptr1 to the string pointed by ptr2, replacing each occurrence of the character ’u’ by the character ’v’, considering lower and upper
case characters.

4. Implement a function `void vec_add_three(short* ptr, int num)` that adds three (3) to all the elements of an array of `type short`, with int num elements and
pointed by ptr.

5. Implement a function `int vec_sum(int* ptr, short num)` that returns the sum
of all the elements of an array of type int, pointed by ptr, with short num elements.
Then, implement another function `int vec_avg(int* ptr, short num)` in Assembly that uses the value returned by `int vec_sum(int* ptr, short num)` to
compute the average.

6. Implement a function `int encrypt(char* ptr)` that adds one (1) to all the characters, that are not ’a’ or space, of the string pointed by ptr. The function should
return the number of changed characters.

7. Implement a function` int decrypt(char* ptr)` that decrypts the string pointed
by ptr and encrypted by `int encrypt(void)`.The function should return the number of changed characters.

8. Implement the function `int test_even(int x)` that tests if the number x is even.
The function should return one (1) if it is even or zero (0) if it is odd.
Use the previous function to implement another function `int vec_sum_even(int*
ptr, int num)` in Assembly that returns the sum of all the even elements of an
array of type int pointed by ptr, with num elements.

9. Implement a function `int* vec_search(int* ptr, int num, int x)` that searches int x in an array of type int, pointed by ptr, with int num elements, and
returns the memory address of it’s first occurrence or zero if not found.

10. Implement a function `void str_cat(char* ptr1, char* ptr2, char* ptr3)` that
concatenates, in a string pointed by ptr3, the strings pointed by ptr1 and ptr2,
which have a maximum length of 40 bytes each.

11. Implement a function `int vec_greater12(int* ptr, int num)` that returns the
number of elements of an array of type int, pointed by ptrvec, with int num
elements, that are greater than 12.

12. Implement a function `unsigned char vec_zero(int* ptr, int num)` that zeroes
the elements of an array of type int, pointed by ptr, with int num elements, that
are greater or equal to 50. The function should return the number of changed
elements.


13. Implement a function `void keep_positives(int* ptr, int num)` that changes
an array of type int, with int num elements and pointed by ptr, by replacing
all the negative numbers by their respective indexes on the array, keeping the
positive elements unchanged.

14. Implement the function `int exists(int* ptr, int num, int x)`, that tests if int
x exists more than once in the array of type int pointed by ptr with int num elements. The function should return 1 if int x has duplicates or 0 if not.
Use the previous function to implement a function `int vec_diff(int* ptr, int num)` that computes the number of elements in the array of type int pointed by
ptr that do not have duplicates.

15. Implement a function `int sum_third_byte(long* ptr, int num)` that returns the
sum of the third byte of all the elements of the array of type long pointed by ptr,
with int num elements.

16. Implement a function` void swap(char* ptr1, char* ptr2, int num)` that swaps
the content of the arrays of type char pointed by ptr1 and ptr2, both with int
num elements (i.e contents of the first array will be copied to second array and vice
versa). The new content of each array must be printed in the main function.

17. Implement a function `void array_sort(int* ptr, int num)` that, given the address of an array of type int pointed by ptr, with int num elements, sorts the
array in descending order.

18. Implement a function `int sort_without_reps(short* ptrsrc, short* ptrdest, int num)` that, given the address of an array of type short pointed by ptrsrc, with
int num elements, and the address of an empty array of the same size pointed by
ptrdest, fills the ptrdest array with the elements of the ptrsrc array in ascending order, eliminating all repeated values. The function must return the number
of items placed in the second array.

19. Implement a function `void frequencies(char* ptrgrades, int num, int* ptrfreq)`
that, given the address of an array of type char pointed by ptrgrades with the
students’ exam grades at ARQCP (a value between 0 and 20), with int num elements, and the address of a second array of integers pointed by ptrfreq, it should
fill ptrfreq with the absolute frequency of the grades stored in ptrgrades.

20. Implement a function `int count_max(int* ptr, int num)` that, given the address of an array of type int pointed by ptr, with int num elements, counts how
many elements in ptr satisfy the condition `vi < vi+1 > vi+2`
.