import std;

void main() {
    long N, K;
    readf("%d %d\n", N, K);

    long res = K;
    long l1, r1 = K;
    long l2 = K, r2 = N + 1;
    while (r1 - l1 > 1 || r2 - l2 > 1) {
        long m1 = (l1 + r1) / 2;
        long m2 = (l2 + r2) / 2;

        if (r1 - l1 >= r2 - l2) {
            if (l1 == 0) {
                res = 1;
                l1 = 1;
            }
            else {
                res = m1;
                l1 = m1;
            }
        }
        else {
            if (r2 == N + 1) {
                res = N;
                r2 = N;
            }
            else {
                res = m2;
                l2 = m2;
            }
        }
    }

    res.writeln;
}