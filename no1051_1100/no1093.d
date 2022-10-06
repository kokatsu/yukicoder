import std;

void main() {
    long N, K;
    readf("%d %d\n", N, K);

    auto a = readln.chomp.split.to!(long[]);

    long num;
    long[] S;
    foreach (i, x; a) {
        num += x;

        if (i >= K - 1) {
            S ~= num;
            num -= a[i-K+1];
        }
    }

    auto T = S.sort;

    long Q;
    readf("%d\n", Q);

    foreach (_; 0 .. Q) {
        long x;
        readf("%d\n", x);

        auto lb = T.lowerBound(x+1);

        auto res = lb.length;
        res.writeln;
    }
}