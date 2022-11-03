import std;

void main() {
    string S;
    readf("%s\n", S);

    auto len = S.length.to!int;
    uint[] F, B;
    foreach (i; 0 .. len-2) {
        if (S[i] == 'S') F ~= i;
        if (S[i..i+3] == "ing") B ~= i;
    }

    auto b = B.assumeSorted;

    long res;
    foreach (f; F) {
        auto ub = b.upperBound(f);
        res += ub.length.to!long;
    }

    res.writeln;
}