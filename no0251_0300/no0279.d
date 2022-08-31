import std;

void main() {
    string S;
    readf("%s\n", S);

    int t, r, e;
    foreach (s; S) {
        if (s == 't') ++t;
        if (s == 'r') ++r;
        if (s == 'e') ++e;
    }

    int res = min(t, r, e/2);
    res.writeln;
}