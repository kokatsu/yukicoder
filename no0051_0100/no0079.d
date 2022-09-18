import std;

void main() {
    int N;
    readf("%d\n", N);

    auto L = readln.chomp.split.to!(int[]);

    L.sort;

    auto G = L.group.array;

    G.sort!"a[1] == b[1] ? a[0] > b[0] : a[1] > b[1]";

    int res = G[0][0];
    res.writeln;
}