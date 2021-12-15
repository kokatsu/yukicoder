import std;

void main() {
    long N;
    readf("%d\n", N);

    long M = 10 ^^ 9 + 7;

    long[][] A = [
        [0L, 1L, 1L, 1L],
        [1L, 0L, 1L, 1L],
        [1L, 1L, 0L, 1L],
        [1L, 1L, 1L, 0L]
    ];

    long[][] B = matPowMod(A, N, M);

    long res = B[0][0];

    res.writeln;
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