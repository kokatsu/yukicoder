import std;

void main() {
    int a, b;
    readf("%d %d\n", a, b);

    int res = (b + a - 1) / a;

    res.writeln;
}