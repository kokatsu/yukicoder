import std;

void main() {
    long N;
    readf("%d\n", N);

    long res, W = 7;
    while (N > 0) {
        if (N < W) {
            res += N;
            break;
        }

        res += W, N -= 1;
    }

    res.writeln;
}