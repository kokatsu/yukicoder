import std;

void main() {
    int N;
    readf("%d\n", N);

    auto S = new long[](N);
    foreach (ref s; S) {
        long a, b;
        readf("%d %d\n", a, b);

        s = a + b * 4;
    }

    S.sort!"a > b";
    long res, W = S.front;
    foreach (s; S) {
        long num = W - s;
        if (num % 2 == 1) {
            res = -1;
            break;
        }

        res += num / 2;
    }

    res.writeln;
}