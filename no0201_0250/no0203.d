import std;

void main() {
    string S1, S2;
    readf("%s\n%s\n", S1, S2);

    string S = S1 ~ S2;

    int res, num;
    foreach (s; S) {
        if (s == 'o') ++num;
        else num = 0;

        res = max(res, num);
    }

    res.writeln;
}