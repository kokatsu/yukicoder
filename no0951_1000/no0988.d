import std;

void main() {
    long N, M, K;
    readf("%d %d %d\n", N, M, K);

    auto input = readln.chomp.split;
    string op = input[0];
    auto B = input[1..$].to!(long[]);

    long Asum;
    foreach (_; 0 .. N) {
        long A;
        readf("%d\n", A);

        Asum = (Asum + A) % K;
    }

    long res;
    foreach (b; B) {
        if (op == "+") res = (res + Asum + (b * N) % K) % K;
        else res = (res + (Asum * b) % K) % K;
    }

    res.writeln;
}