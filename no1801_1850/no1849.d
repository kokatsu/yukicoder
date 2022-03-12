import std;

void main() {
    long N;
    readf("%d\n", N);

    long res, lim = 10 ^^ 5 + 1;
    foreach (i; 1 .. lim) {
        auto s = i.to!string;
        auto num = to!long(s ~ s ~ s);
        if (num <= N) ++res;
    }

    res.writeln;
}