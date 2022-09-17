import std;

void main() {
    string S;
    readf("%s\n", S);

    long res = 1;
    foreach (s; S) {
        res <<= 1;
        if (s == 'R') ++res;
    }

    res.writeln;
}