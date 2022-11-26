import std;

void main() {
    long N, K, T;
    readf("%d %d %d\n", N, K, T);

    writeln(N.abs <= K * T ? "Yes" : "No");
}