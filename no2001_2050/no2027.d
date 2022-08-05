import std;

void main() {
    long N, S;
    readf("%d %d\n", N, S);

    long[] res;
    foreach_reverse (i; 1 .. N+1) {
        if (S < i) continue;

        res ~= i;
        S -= i;
    }

    if (S > 0) {
        writeln(-1);
        return;
    }

    res.reverse;

    res.length.writeln;
    writefln("%(%s %)", res);
}