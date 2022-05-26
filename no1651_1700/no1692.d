import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto A = readln.chomp.split.to!(int[]);

    auto L = A.sort.uniq.array.length.to!int;

    int mx = L, mn = (L == 1 && N == M ? 1 : 0);
    writeln(mx, " ", mn);
}