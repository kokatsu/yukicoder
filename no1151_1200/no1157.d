import std;

void main() {
    long N;
    readf("%d\n", N);

    long R = N.to!real.sqrt.floor.to!long;

    long res = R * 2;
    if (R * (R + 1) > N) --res;

    res.writeln;
}