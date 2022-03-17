import std;

void main() {
    long N, D;
    readf("%d %d\n", N, D);

    auto a = [0L] ~ readln.chomp.split.to!(long[]);

    auto b = a.cumulativeFold!"a + b".array;
    foreach (i; 1 .. N) {
        long d = b[i] - b[i-1];
        if (d < D) b[i] += D - d;
    }

    writefln("%(%s %)", b);
}