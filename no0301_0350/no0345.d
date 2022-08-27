import std;

void main() {
    string S;
    readf("%s\n", S);

    int[] C, W;
    foreach (i, s; S) {
        if (s == 'c') C ~= i.to!int;
        if (s == 'w') W ~= i.to!int;
    }

    auto WS = W.assumeSorted;

    int res = int.max;
    foreach (c; C) {
        auto ub1 = WS.upperBound(c);
        if (ub1.empty) continue;

        auto ub2 = WS.upperBound(ub1.front);
        if (ub2.empty) continue;

        res = min(res, ub2.front-c+1);
    }

    if (res == int.max) res = -1;

    res.writeln;
}