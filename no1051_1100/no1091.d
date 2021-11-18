import std;

void main() {
    int N, Q;
    readf("%d %d\n", N, Q);

    auto a = [0] ~ readln.chomp.split.to!(int[]);

    auto b = a.cumulativeFold!"a ^ b".array;

    foreach (i; 0 .. Q) {
        int l, r;
        readf("%d %d\n", l, r);

        --l;

        int res = b[r] ^ b[l];
        res.writeln;
    }
}