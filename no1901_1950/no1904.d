import std;

void main() {
    long N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(long[]);

    auto fact = new long[](N+1);
    fact[0] = 1;
    foreach (i; 1 .. N+1) fact[i] = fact[i-1] * i;

    A.sort;
    auto G = A.group;

    long res = fact[N];
    foreach (g; G) {
        res /= fact[g[1]];
    }

    res.writeln;
}