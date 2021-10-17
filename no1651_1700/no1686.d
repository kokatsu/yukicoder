import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(int[]);

    A.sort;

    int res = A[0];
    foreach (i; 1 .. N) {
        if (A[i] == A[i-1] + 1) {
            continue;
        }
        res += A[i];
    }

    res.writeln;
}