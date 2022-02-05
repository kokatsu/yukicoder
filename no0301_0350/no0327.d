import std;

void main() {
    long N;
    readf("%d\n", N);

    ++N;
    dchar[] res;
    while (N > 0) {
        --N;
        res ~= to!dchar(N % 26 + 'A');
        N /= 26;
    }

    res.reverse;

    res.writeln;
}