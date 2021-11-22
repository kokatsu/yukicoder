import std;

void main() {
    int T;
    readf("%d\n", T);

    long M = 10 ^^ 9 + 7;

    long div3 = powmod(3U, M.to!ulong-2, M.to!ulong).to!long;

    long[][] mat = [
        [div3, 0, 0, 0, div3, div3],
        [0, div3, 0, div3, 0, div3],
        [0, 0, div3, div3, div3, 0],
        [1L, 0, 0, 0, 0, 0],
        [0, 1L, 0, 0, 0, 0],
        [0, 0, 1L, 0, 0, 0]
    ];

    foreach (i; 0 .. T) {
        long N;
        readf("%d\n", N);

        auto m = matPowMod(mat, N, M);
        m[0][0].writeln;
    }
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