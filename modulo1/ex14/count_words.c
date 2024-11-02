int count_words(char *str)
{
    unsigned int  c = 0;
    int in_word = 0;

    for (int i = 0; str[i] != '\0'; i++)
    {
        if(str[i] != ' ' && str[i] != '\t' && str[i] != '\n'){
            if(!in_word){
                c++;
                in_word = 1;
            }
        }else {
            in_word = 0;
        }
    }

    return c;
}