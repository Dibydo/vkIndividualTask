#include "../include/indTask/greek.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(int argc, char *argv[])
{
    int c = 0;
    FILE *file_1 = NULL;
    char* line = NULL;
    size_t len = 0;
    size_t read;
    file_1 = fopen(argv[1], "r");

    if (file_1)
    {
        while (getline(&line, &len, file_1) != EOF) {
            line[strlen(line)-1] = '\0';
            number_loop(line, &c);
            printf("%d\n", c);
            c = 0;
        }
        fclose(file_1);
        return 0;
    }

    if (argc > 1)
    {
        for (int i = 1; i < argc; i++)
        {
            number_loop(argv[i], &c);
            printf("%d\n", c);
            c = 0;
        }
    }
    return 0;
}