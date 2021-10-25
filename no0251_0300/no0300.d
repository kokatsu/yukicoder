import std;

void main() {
    long X;
    readf("%d\n", X);

    long N = 2;
    while (N * N <= X) {
        long S = N * N;
        while (X % S == 0) {
            X /= S;
        }
        ++N;
    }

    X.writeln;
}