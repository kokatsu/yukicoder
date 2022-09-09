import std;

void main() {
    int N;
    readf("%d\n", N);

    int res;
    foreach (i; 0 .. N) {
        int X, Y;
        readf("%d %d\n", X, Y);

        if (res == -1) continue;

        if (i == 0) {
            res = Y - X;
            if (res <= 0) res = -1;
        }
        else {
            if (res != Y - X) res = -1;
        }
    }

    res.writeln;
}