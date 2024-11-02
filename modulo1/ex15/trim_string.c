void trim_string(char *str)
{
    int read_index = 0;
    int write_index = 0;
    int in_word = 0;
    int size = sizeof(str) / sizeof(str[0]);

    for (int i = 0; i < sizeof(str) / sizeof(str[0]); i++)
    {
        if(str[i] != ' ' && str[i] != '\t' && str[i] != '\n'){
            if(!in_word){
                in_word = 1;
            }
        }else {
            in_word = 0;
        }
    }
}