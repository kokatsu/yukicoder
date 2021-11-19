import std;

void main() {
    long N, M, T;
    readf("%d %d %d\n", N, M, T);

    auto path = new long[][](N, N);
    foreach (i; 0 .. M) {
        long s, t;
        readf("%d %d\n", s, t);

        path[s][t] = 1;
        path[t][s] = 1;
    }

    enum long MOD = 998244353;

    auto mat = matPowMod(path, T, MOD);

    long res = mat[0][0];
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