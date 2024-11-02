char* where_is(char *str, char c) {

    for(int i = 0; str[i] != '\0'; i++)
    {
        if(str[i] == c || (str[i] - 32) == c)
        {
            return &str[i];
        }
    }

    return 0;
}