import std;

void main() {
    int a, b, c, d, m;
    readf("%d %d %d %d %d\n", a, b, c, d, m);

    int x = (a + c) / m, y = (b + d) / m;

    int res = (x == y ? (b + d) % m : m - 1);
    res.writeln;
}