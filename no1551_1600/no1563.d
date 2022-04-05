import std;

void main() {
    int T;
    readf("%d\n", T);

    foreach (_; 0 .. T) {
        int N, M;
        readf("%d %d\n", N, M);

        auto cnts = new int[](N);
        foreach (i; 0 .. M) {
            int u, v;
            readf("%d %d\n", u, v);

            ++cnts[u-1], ++cnts[v-1];
        }

        bool isOK;
        auto isSame = new bool[](N);
        foreach (c; cnts) {
            isOK |= isSame[c];
            isSame[c] = true;
        }

        writeln(isOK ? "Yes" : "No");
    }
}