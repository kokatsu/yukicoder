import std;

void main() {
    long N, M;
    readf("%d %d\n", N, M);

    auto scores = new long[][](N, N);
    foreach (_; 0 .. M) {
        long A, B, C;
        readf("%d %d %d\n", A, B, C);

        scores[A][B] = C;
    }

    auto arr = N.iota.array;
    long res;
    foreach (p; arr.permutations) {
        long num;
        long[] list;
        foreach (x; p) {
            foreach (l; list) {
                num += scores[l][x];
            }
            list ~= x;
        }
        res = max(res, num);
    }

    res.writeln;
}