#include <stdio.h>

int binarySearch(int arr[], int left, int right, int x) {
    while (left <= right) {
        int mid = left + (right - left) / 2;

        if (arr[mid] == x)
            return mid;

        if (arr[mid] < x)
            left = mid + 1;
        else
            right = mid - 1;
    }

    return -1;
}

int main() {
    int arr[] = {2, 3, 4, 10, 40};
    int n = sizeof(arr) / sizeof(arr[0]);
    int x;

    printf("Masukkan nilai yang dicari: ");
    scanf("%d", &x);

    int result = binarySearch(arr, 0, n - 1, x);
    
    if (result == -1)
        printf("Elemen tidak ditemukan dalam array\n");
    else
        printf("Elemen ditemukan pada indeks %d\n", result);

    return 0;
}