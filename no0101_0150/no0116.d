import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(int[]);

    int res;
    foreach (i; 0 .. N-2) {
        if (A[i] == A[i+1]) continue;
        if (A[i] == A[i+2]) continue;
        if (A[i+1] == A[i+2]) continue;

        auto K = A[i..i+3].dup;
        K.sort;

        if (K[1] == A[i] || K[1] == A[i+2]) ++res;
    }

    res.writeln;
}