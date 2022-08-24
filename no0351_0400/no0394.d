import std;

void main() {
    auto S = readln.chomp.split.to!(int[]);

    S.sort;

    S.popFront, S.popBack;

    int L = S.length.to!int;
    int N = 100, T = S.sum * N / L;

    int I = T / N, F = T % N;
    writefln("%d.%02d", I, F);
}