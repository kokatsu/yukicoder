import std;

void main() {
    long N;
    readf("%d\n", N);

    long A1, B1, C1;
    readf("%d %d %d\n", A1, B1, C1);

    long M = 10 ^^ 9 + 7;

    long[][] mat = [
        [1L, M-1L, 0L],
        [0L, 1L, M-1L],
        [M-1L, 0L, 1L]
    ];

    auto X = matPowMod(mat, N-1, M);

    long A = (X[0][0] * A1 % M + X[0][1] * B1 % M + X[0][2] * C1 % M) % M;
    long B = (X[1][0] * A1 % M + X[1][1] * B1 % M + X[1][2] * C1 % M) % M;
    long C = (X[2][0] * A1 % M + X[2][1] * B1 % M + X[2][2] * C1 % M) % M;

    writeln(A, " ", B, " ", C);
}

long[][] matMulMod(long[][] a, long[][] b, long m) {
    long l = a[0].length.to!long;

    assert(l == b.length);

    auto res = new long[][](a.length, b[0].length);
    foreach (i, r; res) {
        foreach (k; 0 .. l) {
            foreach (j, ref e; r) {
                e = (e + a[i][k] * b[k][j]) % m;
            }
        }
    }

    return res;
}

long[][] matPowMod(long[][] mat, long p, long m) {
    long l = mat[0].length.to!long;

    assert(l == mat.length);

    auto res = new long[][](l, l);
    foreach (i; 0 .. l) {
        res[i][i] = 1;
    }

    while (p > 0) {
        if (p & 1) {
            res = matMulMod(res, mat, m);
        }
        mat = matMulMod(mat, mat, m);
        p >>= 1;
    }

    return res;
}