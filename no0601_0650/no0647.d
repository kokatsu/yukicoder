import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = new int[](N), B = new int[](N);
    foreach (i; 0 .. N) readf("%d %d\n", A[i], B[i]);

    int M;
    readf("%d\n", M);

    auto X = new int[](M), Y = new int[](M);
    foreach (i; 0 .. M) readf("%d %d\n", X[i], Y[i]);

    int mx;
    auto cnts = new int[](M+1);
    foreach (i; 0 .. N) {
        foreach (j; 0 .. M) {
            if (X[j] <= A[i] && Y[j] >= B[i]) {
                mx = max(mx, ++cnts[j+1]);
            }
        }
    }

    if (mx == 0) mx.writeln;
    else {
        foreach (i, c; cnts) {
            if (c == mx) i.writeln;
        }
    }
}