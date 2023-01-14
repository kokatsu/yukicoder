import std;

void main() {
    int N, a, b, c;
    readf("%d\n%d %d %d\n", N, a, b, c);

    auto S = readln.chomp.split;

    auto L = [0] ~ S.map!(x => x.length.to!int).array;
    auto C = L.cumulativeFold!"a + b".array;
    auto A = C.assumeSorted;

    int res;
    foreach (i; 0 .. N) {
        int x = C[i] + a;
        auto lba = A.lowerBound(x+1);
        if (lba.empty || lba.back != x) continue;

        int y = x + b;
        auto lbb = A.lowerBound(y+1);
        if (lbb.empty || lbb.back != y) continue;

        int z = y + c;
        auto lbc = A.lowerBound(z+1);
        if (lbc.empty || lbc.back != z) continue;

        ++res;
    }

    res.writeln;
}