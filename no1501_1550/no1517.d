import std;

void main() {
    int d, a, b;
    readf("%d\n%d %d\n", d, a, b);

    int res = d * min(a, b);
    res.writeln;
}