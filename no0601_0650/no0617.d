import std;

void main() {
    int N, K;
    readf("%d %d\n", N, K);

    auto A = new int[](N);
    foreach (i; 0 .. N) readf("%d\n", A[i]);

    int res, L = 1 << 20;
    foreach (i; 0 .. L) {
        int weight;
        foreach (j, a; A) {
            if ((i >> j) & 1) weight += a;
        }

        if (weight <= K) res = max(res, weight);
    }

    res.writeln;
}