import std;

void main() {
    long N, H, W;
    readf("%d %d %d\n", N, H, W);

    long A = (N + 1) / 2, B = N / 2;

    long res = A * B * (H + W - 2);
    res.writeln;
}