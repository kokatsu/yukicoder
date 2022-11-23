import std;

void main() {
    long N, K;
    readf("%d %d\n", N, K);

    auto A = readln.chomp.split.to!(long[]);

    long H = N / 2;

    void f(long num, long idx, long lim, ref bool[long][][] list, long pos = 0, long neg = 0) {
        if (idx >= lim) {
            list[pos][neg][num] = true;
        }
        else {
            f(num-A[idx], idx+1, lim, list, pos, 1);
            f(num, idx+1, lim, list, pos, neg);
            f(num+A[idx], idx+1, lim, list, 1, neg);
        }
    }

    auto L = new bool[long][][](2, 2), R = new bool[long][][](2, 2);
    f(0, 0, H, L), f(0, H, N, R);

    bool isOK = A.canFind(K);

    if (K in R[1][1]) isOK = true;

    foreach (key; L[0][1].byKey) {
        long num = K - key;
        if (num in R[1][0]) isOK = true;
        if (num in R[1][1]) isOK = true;
    }

    foreach (key; L[1][0].byKey) {
        long num = K - key;
        if (num in R[0][1]) isOK = true;
        if (num in R[1][1]) isOK = true;
    }

    foreach (key; L[1][1].byKey) {
        long num = K - key;

        foreach (i; 0 .. 2) {
            foreach (j; 0 .. 2) {
                if (num in R[i][j]) isOK = true;
            }
        }
    }

    writeln(isOK ? "Yes" : "No");
}