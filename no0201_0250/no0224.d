import std;

void main() {
    int n;
    string S, T;
    readf("%d\n%s\n%s\n", n, S, T);

    int res;
    foreach (s, t; zip(S, T)) {
        if (s != t) ++res;
    }

    res.writeln;
}