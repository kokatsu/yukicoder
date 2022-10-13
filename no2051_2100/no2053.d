import std;

void main() {
    long N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(long[]);

    long res, r;
    foreach (l; 0 .. N-1) {
        while (r < N -1 && A[r] + 1 == A[r+1]) {
            ++r;
        }

        res += r - l;

        if (l == r) ++r;
    }

    res.writeln;
}