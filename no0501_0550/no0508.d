import std;

void main() {
    long n;
    readf("%d\n", n);

    long res = max(1, sqrt(n.to!real/3.0).floor.to!long);
    res.writeln;
}