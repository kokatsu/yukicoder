import std;

void main() {
    int N;
    readf("%d\n", N);

    int res, K = 2;
    while (K <= N) {
        while (N % K == 0) {
            res += K;
            N /= K;
        }
        ++K;
    }

    res.writeln;
}