import std;

void main() {
    int N;
    readf("%d\n", N);

    int res;
    foreach (i; 0 .. N/3+1) {
        int M = N - i * 3;
        foreach (j; 0 .. M/5+1) {
            int L = M - j * 5;
            int d = L / 2, r = L % 2;
            if (r == 0 && d <= j) ++res;
        }
    }

    res.writeln;
}