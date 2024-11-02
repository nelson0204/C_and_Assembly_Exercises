void get_array_statistics(int *vec, int n, int *min, int *max, float *avg)
{
    int sum = 0;
    for (int i = 0; i < n; i++)
    {
        if (i == 0)
        {
            *min = vec[i];
            *max = vec[i];
        }

        if (*min > vec[i])
        {
            *min = vec[i];
        }

        if (*max < vec[i])
        {
            *max = vec[i];
        }

        sum += vec[i];
    }
    if (sum != 0)
    {
        *avg = sum / n;
    }
}