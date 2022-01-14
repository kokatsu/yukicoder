import std;
import core.checkedint;

void main() {
    long N, K, M;
    readf("%d %d %d\n", N, K, M);

    long[long] factors;
    long q = 2, m = M;
    while (q * q <= m) {
        while (m % q == 0) {
            ++factors[q];
            m /= q;
        }

        ++q;
    }
    if (m > 1) ++factors[m];

    long res = long.max;
    foreach (p; factors.byKey) {
        long num = p, cnt;
        bool isOver;
        while (!isOver && num <= N) {
            cnt += N / num - K / num - (N - K) / num;
            num = muls(num, p, isOver);
        }

        res = min(res, cnt/factors[p]);
    }

    res.writeln;
}