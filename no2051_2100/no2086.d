import std;

void main() {
    string A, B;
    readf("%s\n%s\n", A, B);

    auto x = A.length, y = B.length;
    long mn = min(x, y), mx = max(x, y);

    int num;
    int[] res;
    foreach (i; 0 .. mn) {
        int u = A[x-i-1] - '0', v = B[y-i-1] - '0';

        int S = u + v + num;

        res ~= S % 10;
        num = S / 10;
    }

    string C = (x >= y ? A : B);
    foreach (i; mn .. mx) {
        int S = C[mx-i-1] - '0' + num;

        res ~= S % 10;
        num = S / 10;
    }

    if (num > 0) res ~= num;

    res.reverse;

    writefln("%(%s%)", res);
}