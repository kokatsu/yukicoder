import std;

void main() {
    int K, N, F;
    readf("%d %d %d\n", K, N, F);

    auto A = readln.chomp.split.to!(int[]);

    int res = K * N;
    res -= A.sum;
    if (res < 0) {
        res = -1;
    }

    res.writeln;
}