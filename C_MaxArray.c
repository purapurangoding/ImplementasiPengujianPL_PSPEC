#include <stdio.h>

#define MAX_SIZE 100

int cariMaksimum(int arr[], int size) {
    int max = arr[0];
    for (int i = 1; i < size; i++) {
        if (arr[i] > max) {
            max = arr[i];
        }
    }
    return max;
}

int main() {
    int arr[MAX_SIZE];
    int size;

    printf("Masukkan jumlah elemen: ");
    scanf("%d", &size);

    printf("Masukkan %d elemen:\n", size);
    for (int i = 0; i < size; i++) {
        scanf("%d", &arr[i]);
    }

    int maksimum = cariMaksimum(arr, size);
    printf("Nilai maksimum: %d\n", maksimum);

    return 0;
}