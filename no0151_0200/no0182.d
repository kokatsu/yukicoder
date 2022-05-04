import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(int[]);

    int res;
    auto G = A.sort.group;
    foreach (g; G) {
        if (g[1] == 1) ++res;
    }

    res.writeln;
}