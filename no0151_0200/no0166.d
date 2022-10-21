import std;

void main() {
    long H, W, N, K;
    readf("%d %d %d %d\n", H, W, N, K);

    long P = (H * W - 1) % N + 1;

    writeln(P == K ? "YES" : "NO");
}