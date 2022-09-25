import std;

void main() {
    string S;
    readf("%s\n", S);

    auto res = new dchar[](S.length);
    foreach (i, s; S) {
        res[i] = to!dchar('A'+((s-'A')+26-(i+1)%26)%26);
    }

    res.writeln;
}