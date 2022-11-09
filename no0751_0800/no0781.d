import std;

void main() {
    long X, Y;
    readf("%d %d\n", X, Y);

    auto cnts = new long[](Y+1);
    foreach (i; 1 .. Y+1) {
        long u = i * i;
        if (u > Y) break;

        foreach (j; 0 .. Y+1) {
            long v = j * j;
            if (u + v > Y) break;

            ++cnts[u+v];
        }
    }

    long res = cnts[X..$].maxElement * 4;
    res.writeln;
}