import std;

void main() {
    int N;
    readf("%d\n", N);

    auto X = readln.chomp.split.to!(int[]);

    int cnt;
    foreach (x; X) cnt += (x % 2 == 0 ? 1 : -1);

    int res = cnt.abs;
    res.writeln;
}