import std;

void main() {
    int N, K;
    readf("%d %d\n", N, K);

    auto p = readln.chomp.split.to!(int[]);

    p.sort!"a > b";

    auto G = p.group;

    int res;
    foreach (g; G) {
        if (res + g[1] > K) break;
        res += g[1];
    }

    res.writeln;
}