import std;

void main() {
    int M;
    readf("%d\n", M);

    int p = 2017;
    int q = p * p % M;

    int X = q;
    foreach (i; 0 .. p-1) {
        X = (X * q) % M;
    }

    X = (X + p) % M;

    X.writeln;
}