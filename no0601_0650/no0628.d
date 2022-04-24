import std;

void main() {
    int N;
    readf("%d\n", N);

    int[string] list;

    foreach (_; 0 .. N) {
        int No;
        readf("%d\n", No);

        int M, S;
        readf("%d %d\n", M, S);

        auto Tag = readln.chomp.split;
        foreach (t; Tag) {
            list[t] += S;
        }
    }

    auto key = list.keys;
    auto val = list.values;
    zip(key, val).sort!"a[1] == b[1] ? a[0] < b[0] : a[1] > b[1]";

    auto len = min(10, key.length);
    foreach (i; 0 .. len) {
        writeln(key[i], " ", val[i]);
    }
}