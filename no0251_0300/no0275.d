import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(int[]);
    A.sort;

    double res = to!double(A[N/2]);
    if (N % 2 == 0) {
        res += to!double(A[N/2-1]);
        res /= 2.0;
    }

    res.writeln;
}