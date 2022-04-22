import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto S = new string[](N);
    foreach (i; 0 .. N) S[i] = readln.chomp;

    auto cnts = new int[](M);
    foreach (s; S) {
        foreach (i, x; s) {
            if (x == 'o') ++cnts[i];
        }
    }

    int res = N - cnts.minElement + 1;
    res.writeln;
}