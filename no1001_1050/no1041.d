import std;

struct Fraction {
    int num, den;
}

void main() {
    int N;
    readf("%d\n", N);

    auto X = new int[](N), Y = new int[](N);
    foreach (i; 0 .. N) readf("%d %d\n", X[i], Y[i]);

    zip(X, Y).sort;

    int res;
    foreach (i; 0 .. N-1) {
        int[Fraction] list;
        foreach (j; i+1 .. N) {
            int x = X[j] - X[i], y = Y[j] - Y[i];
            if (x > 0) {
                int g = gcd(x, y.abs);
                x /= g, y /= g;
            }
            else {
                y = 1;
            }

            ++list[Fraction(y, x)];
        }

        foreach (v; list.byValue) {
            res = max(res, v+1);
        }
    }

    res.writeln;
}