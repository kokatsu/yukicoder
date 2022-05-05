import std;

void main() {
    long L, N;
    readf("%d\n%d\n", L, N);

    auto S = readln.chomp.split;

    long res = (1L << (L - 3)) * N;
    res.writeln;
}