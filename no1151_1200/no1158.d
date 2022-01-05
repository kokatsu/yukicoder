import std;

void main() {
    long A, B, N;
    readf("%d %d %d\n", A, B, N);

    long M = 10 ^^ 9 + 7;

    long res = 1;
    void f(long g, long cnt) {
        if (cnt >= N) {
            res = res * g % M;
            return;
        }
        foreach (i; A .. B+1) {
            f(gcd(g, i), cnt+1);
        }
    }

    foreach (i; A .. B+1) {
        f(i, 1);
    }

    res.writeln;
}