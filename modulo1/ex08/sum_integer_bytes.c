int sum_integer_bytes(unsigned int *p)
{
    unsigned char *p_cast = (unsigned char *)p;
    int sum = 0;

    for (int i = 0; i < 4; i++)
    {
        sum += p_cast[i];
    }

    return sum;
}