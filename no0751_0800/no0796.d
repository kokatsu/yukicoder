import std;

void main() {
    int N;
    readf("%d\n", N);

    auto seq = new int[](N);
    seq[0] = 3, seq[1..N] = 1;

    if ((N + 2) % 3 == 0) ++seq[1];
    else if ((N + 2) % 3 == 2) seq[1] += 2;

    writefln("%(%s %)", seq);
}