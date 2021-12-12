import std;

void main() {
    long N;
    readf("%d\n", N);

    long p = 2, num = N, cnt;
    while (p * p <= num) {
        while (num % p == 0) {
            ++cnt;
            num /= p;
        }

        ++p;
    }

    if (num > 1) {
        ++cnt;
    }

    writeln(cnt >= 3 ? "YES" : "NO");
}