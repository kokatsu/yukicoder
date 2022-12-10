import std;

void main() {
    int N;
    readf("%d\n", N);

    int[string] list;
    foreach (_; 0 .. N) {
        string S;
        int C;
        readf("%s %d\n", S, C);

        list[S] = C;
    }

    auto res = new int[](8);
    foreach (val; list.byValue) ++res[val];

    foreach (r; res) r.writeln;
}