import std;

void main() {
    int N, H, M, T;
    readf("%d %d %d %d\n", N, H, M, T);

    foreach (i; 0 .. N-1) {
        M += T;
        H = (H + M / 60) % 24;
        M %= 60;
    }

    writeln(H);
    writeln(M);
}