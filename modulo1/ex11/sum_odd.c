int sum_odd(int *p)
{
    int sum = 0;
    int numbOfItems = *p;
    for (int i = 1; i <= numbOfItems; i++)
    {
        if (p[i] % 2 != 0)
        {
            sum += p[i];
        }
    }

    return sum;
}
