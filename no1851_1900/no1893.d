import std;

void main() {
    int X, Y;
    readf("%d %d\n", X, Y);

    int Z;
    foreach (i; 1 .. 3) {
        int t = (X + 4 * i) % 12;
        if (t == Y) continue;
        Z = t;
    }

    Z.writeln;
}