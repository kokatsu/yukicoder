import std;

void main() {
    long N;
    readf("%d\n", N);

    auto c = readln.chomp.split.to!(long[]);

    dchar[] res;
    foreach_reverse (i, x; c) {
        res ~= to!dchar(i+'1').repeat(x).array;
    }

    res.writeln;
}