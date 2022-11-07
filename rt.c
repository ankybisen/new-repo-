#include<stdio.h>
void main()
{
    char ch;
    int a,b, result;
    // asking for input
    printf("enter an operator(+,-,*,/):");
    scanf("%c",&ch);
    printf("enter two operator: /n");
    scanf("%d%d",&a,&b);
    switch(ch)
    {
        case '+':
        result=a+b;
        break;
        case '-':
        result=a-b;
        break;
        case '*':
        result=a*b;
        break;
        case '/':
        result=a/b;
    }
    printf("result=%d",result);
    return 0;
}
