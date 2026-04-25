

#include <iostream>
#include <type_traits>
#include <cmath>
#include <cstring>

int main() {
    int N = 200;
    int n = std::sqrt(N);
    int marker[201];
    std::memset(marker, 1, sizeof(marker));
    int i = 2, k = 0;
    volatile int primes[201];
    while (i <= n) {
        while (marker[i] == 0) {
            i++;
        }
        for (int j = 2*i;j <= N;j += i) { 
            marker[j] = 0;
        } 
        i++;
    }
    volatile int s = 0;
    for (int i = 2; i <= N;i++) {
        if (marker[i]) {
            s += i;
        }
    }
        
}
