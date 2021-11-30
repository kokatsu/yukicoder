import std;

void main() {
    long N;
    readf("%d\n", N);

    long res, i = 1;
    while (i * i <= N) {
        if (N % i == 0) {
            res += i;

            if (i != N / i) {
                res += N / i;
            }
        }

        ++i;
    }

    res.writeln;
}