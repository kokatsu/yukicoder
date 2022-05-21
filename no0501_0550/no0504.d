import std;

void main() {
    int N;
    readf("%d\n", N);

    int K;
    readf("%d\n", K);

    int num = 1;
    num.writeln;

    foreach (i; 0 .. N-1) {
        int a;
        readf("%d\n", a);

        if (a > K) ++num;

        num.writeln;
    }
}