#include <stdio.h>
#include <string.h>

int main() {
    char name[100];
    
    printf("What's your name? ");
    fgets(name, sizeof(name), stdin);
    
    // Remove newline character
    name[strcspn(name, "\n")] = 0;
    
    printf("Hello, %s! Welcome to C programming.\n", name);
    
    return 0;
}

