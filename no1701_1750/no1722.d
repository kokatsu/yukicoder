import std;

void main() {
    ulong N, M;
    readf("%d %d\n", N, M);

    auto X = readln.chomp.split.to!(ulong[]);
    auto Y = readln.chomp.split.to!(ulong[]);

    auto Z = Y.sort;
    foreach (x; X) {
        auto l = Z.upperBound(x);

        if (l.empty) {
            writeln("Infinity");
        }
        else {
            writeln(l.front - x);
        }
    }
}