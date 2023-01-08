import std;

void main() {
    int N;
    string S;
    readf("%d\n%s\n", N, S);

    ulong[] L;
    auto res = new ulong[](N);
    foreach (i, s; S) {
        if (s == '(') {
            L ~= i;
        }
        else {
            res[i] = L.back + 1;
            res[L.back] = i + 1;
            L.popBack;
        }
    }

    foreach (r; res) r.writeln;
}