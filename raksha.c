#include<stdio.h>
void main()
{
    int day;
    printf("/n enter the day (1-7)=");
    scanf("%d",&day);
    switch(day)
    {
        case 1 : printf("sunday /n");
        break;
        case 2 : printf("monday /n");
        break;
        case 3 : printf("tuesday /n");
        break;
        case 4 : printf("wednesday /n");
        break;
        case 5 : printf("thursday /n");
        break;
        case 6 : printf("friday /n");
        break;
        case 7 : printf("saturday /n");
        default : printf("not vild date");
    }
}
