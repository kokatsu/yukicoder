import std;

void main() {
    long X, Y, Z;
    readf("%d %d %d\n", X, Y, Z);

    long res = Z;
    if (X <= Z) --res;
    if (Y <= Z) --res;

    res.writeln;
}