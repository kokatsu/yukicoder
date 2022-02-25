import std;

void main() {
    int T;
    readf("%d\n", T);

    foreach (_; 0 .. T) {
        int X, Y;
        readf("%d %d\n", X, Y);

        bool isOK = true;
        if (X <= 4) isOK &= (X >= Y);

        writeln(isOK ? "Yes" : "No");
    }
}