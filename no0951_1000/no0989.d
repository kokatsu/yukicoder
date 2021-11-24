import std;

void main() {
    long N, M, K;
    readf("%d %d %d\n", N, M, K);

    auto input = readln.chomp.split;
    string op = input[0];
    auto B = input[1..$].to!(long[]).sort;

    long res;
    foreach (i; 0 .. N) {
        long A;
        readf("%d\n", A);

        if (op == "+") {
            res += B.upperBound(K-A-1).length;
        }
        else {
            res += B.upperBound((K+A-1)/A-1).length;
        }
    }

    res.writeln;
}