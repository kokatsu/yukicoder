import std;

void main() {
    string N;
    readf("%s\n", N);

    auto len = N.length;

    long res = N.to!long;
    foreach (i; 0 .. len-1) {
        foreach (j; i+1 .. len) {
            auto S = N.dup.to!(dchar[]);

            S.swapAt(i, j);

            res = max(res, S.to!long);
        }
    }

    res.writeln;
}