import std;

void main() {
    int N, D;
    readf("%d %d\n", N, D);

    auto res = 'C'.repeat(N).array;

    int pos, rem = D;
    while (pos < N && rem > 0) {
        res[pos++] = 'A';
        --rem;
    }

    while (rem > 0) {
        res[--pos] = 'B';
        --rem;
    }

    res.writeln;
}