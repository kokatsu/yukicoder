import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(long[]);

    A.sort;

    long res;
    foreach (i; 0 .. N) {
        res += A[i*2] * A[i*2+1];
    }

    res.writeln;
}