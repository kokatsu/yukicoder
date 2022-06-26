import std;

void main() {
    int N, K;
    readf("%d %d\n", N, K);

    auto A = readln.chomp.split.to!(int[]);

    A.sort!"a > b";

    int res;
    foreach (i; 0 .. K) {
        if (i > 0 && A[i] < 0) break;
        res += A[i];
    }

    res.writeln;
}