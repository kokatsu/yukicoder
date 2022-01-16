import std;

void main() {
    int N;
    readf("%d\n", N);

    int res;
    while (N > 1) {
        if (N % 2 == 0) N /= 2;
        else ++N;

        ++res;
    }

    res.writeln;
}