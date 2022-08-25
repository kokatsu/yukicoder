import std;

void main() {
    int a, b;
    readf("%d %d\n", a, b);

    int diff = b - a;

    if (diff > 0) "+".write;
    diff.writeln;
}