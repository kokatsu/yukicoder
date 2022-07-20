import std;

void main() {
    int i;
    readf("%d\n", i);

    foreach (_; 0 .. i) {
        int N;
        readf("%d\n", N);

        string res;
        if (N % 8 == 0) res ~= "iki";
        if (N % 10 == 0) res ~= "sugi";

        if (res.empty) res = to!string(N/3);

        res.writeln;
    }
}