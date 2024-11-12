## Model Sheet 2


### Exercises
1. Consider the following snippet of code:
    ```c
    int main()
    {
        int r = fn(1,3,2);

        printf("%d\n", r);

        return 0;
    }
    ```
    Implement in assembly language the function `int max(int a, int b int c)` that, given three integer it returns 1, if **`a > b && a > c`**, or 0, otherwise.

2. Consider the following snippet of code:
    ```c
    int main()
    {
       int vec[] = {1,3,4,6,3,8};
       int r = count_max(vec, 6);

       printf("%d\n", r);

       return 0;
    }
    ```

    Implement in assembly language the function `int count_max(int* ptr, int num)` that, given the address of an array of type int pointed by ptr, with `int num` elements, counts how many elements in ptr satisfy the condition `vi < vi+1 > vi+2`. The `int max(int a, int b int c)` function should be invoked.
