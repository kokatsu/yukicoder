import std;

struct S {
    long x, y;
}

void main() {
    int N;
    readf("%d\n", N);

    S[] pos;
    int[] num;
    foreach (i; 0 .. N) {
        auto A = readln.chomp.split.to!(int[]);

        foreach (j, a; A[1..$]) {
            pos ~= S(j, i);
            num ~= a;
        }
    }

    zip(pos, num).sort!"a[0].x == b[0].x ? a[0].y < b[0].y : a[0].x < b[0].x";

    writefln("%(%s %)", num);
}