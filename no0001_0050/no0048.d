import std;

void main() {
    int X, Y, L;
    readf("%d\n%d\n%d\n", X, Y, L);

    int res;
    if (Y >= 0) {
        res += (Y + L - 1) / L;
        if (X != 0) {
            res += (X.abs + L - 1) / L + 1;
        }
    }
    else {
        res += (-Y + L - 1) / L + 2;
        res += (X.abs + L - 1) / L;
    }

    res.writeln;
}