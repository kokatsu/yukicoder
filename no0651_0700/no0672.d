import std;

void main() {
    string S;
    readf("%s\n", S);

    auto len = S.length.to!int;
    auto cnts = new int[](len+1);
    foreach (i, s; S) {
        cnts[i+1] = cnts[i] + (s == 'A' ? 1 : -1);
    }

    int M = len * 2 + 1;
    auto pos = new int[][](M);
    foreach (i, cnt; cnts) {
        pos[len+cnt] ~= i.to!int;
    }

    int res;
    foreach (i; 0 .. M) {
        if (pos[i].empty) continue;

        res = max(res, pos[i].back-pos[i].front);
    }

    res.writeln;
}