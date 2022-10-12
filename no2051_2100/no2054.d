import std;

void main() {
    long N, M;
    readf("%d %d\n", N, M);

    long S = N * (N + 1) / 2;

    writeln(S <= M ? "Yes" : "No");
}