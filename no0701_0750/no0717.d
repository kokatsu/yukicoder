import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto S = readln.chomp;
    auto T = readln.chomp;

    auto cnts = new long[](2);
    foreach (s; S) ++cnts[s-'A'];

    int res;
    foreach (t; T) {
        if (cnts[t-'A'] > 0) {
            --cnts[t-'A'];
            ++res;
        }
    }

    res.writeln;
}