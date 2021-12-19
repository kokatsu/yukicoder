import std;

void main() {
    int N;
    readf("%d\n", N);

    int g;
    foreach (i; 0 .. N) {
        int A;
        readf("%d\n", A);

        if (i > 0) {
            g = gcd(g, A);
        }
        else {
            g = A;
        }
    }

    int res = 100 / g;
    res.writeln;
}