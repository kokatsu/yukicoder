import std;

void main() {
    int N;
    readf("%d\n", N);

    int[] res;
    while (N > 0) {
        res ~= N % 7;
        N /= 7;
    }

    if (res.empty) res ~= 0;

    res.reverse;

    writefln("%(%s%)", res);
}