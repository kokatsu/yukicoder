import std;

void main() {
    string S;
    int t, u;
    readf("%s %d %d\n", S, t, u);

    foreach (i, s; S) {
        if (i == t || i == u) continue;

        s.write;
    }

    writeln;
}