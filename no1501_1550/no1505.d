import std;

void main() {
    long N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(long[]);

    long res = N * (N + 1) / 2, r;
    foreach (l; 0 .. N) {
        while (r < N && A[r] == 1) ++r;

        res -= r - l;

        if (l == r) ++r;
    }

    res.writeln;
}