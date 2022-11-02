import std;

void main() {
    long N, Q;
    readf("%d %d\n", N, Q);

    auto A = readln.chomp.split.to!(long[]);

    long len = A.sum, pos;
    auto B = new long[](len);
    foreach (a; A) {
        foreach (i; 1 .. a+1) B[pos++] = i;
    }

    auto C = B.cumulativeFold!"a + b".array.assumeSorted;

    foreach (_; 0 .. Q) {
        long S;
        readf("%d\n", S);

        auto ub = C.upperBound(S-1);

        long res = -1;
        if (!ub.empty) res = len - ub.length.to!long + 1;

        res.writeln;
    }
}