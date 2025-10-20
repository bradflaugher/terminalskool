#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[]) {
    if (argc != 4) {
        printf("Usage: %s <num1> <operator> <num2>\n", argv[0]);
        printf("Example: %s 10 + 5\n", argv[0]);
        return 1;
    }
    
    double num1 = atof(argv[1]);
    char operator = argv[2][0];
    double num2 = atof(argv[3]);
    double result;
    
    switch(operator) {
        case '+':
            result = num1 + num2;
            break;
        case '-':
            result = num1 - num2;
            break;
        case 'x':
        case '*':
            result = num1 * num2;
            break;
        case '/':
            if (num2 == 0) {
                printf("Error: Division by zero\n");
                return 1;
            }
            result = num1 / num2;
            break;
        default:
            printf("Unknown operator: %c\n", operator);
            return 1;
    }
    
    printf("%.2f %c %.2f = %.2f\n", num1, operator, num2, result);
    
    return 0;
}

