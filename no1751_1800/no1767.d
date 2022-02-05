import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto A = readln.chomp.split.to!(long[]);
    auto B = readln.chomp.split.to!(long[]);

    A = [long.min / 2] ~ A ~ [long.max / 2];

    long res, pos;
    foreach (i; 0 .. N+1) {
        long[] C = [A[i]];
        while (pos < M && B[pos] < A[i+1]) {
            C ~= B[pos];
            ++pos;
        }

        auto l = C.length;
        if (l == 1) {
            continue;
        }

        C ~= A[i+1];

        long w;
        foreach (j; 0 .. l) {
            w = max(w, C[j+1]-C[j]);
        }

        res += A[i+1] - A[i] - w;
    }

    res.writeln;
}