import std;

void main() {
    long A, B, N, M;
    readf("%d %d %d %d\n", A, B, N, M);

    long res = min(A, B);
    res += (A >= B ? (A - B) / (N + 1) : (B - A) / (M + 1));

    res.writeln;
}