import std;

void main() {
    int A, B;
    readf("%d %d\n", A, B);

    bool[int] list;
    foreach (i; 0 .. A+1) {
        foreach (j; 0 .. B+1) {
            if (i + j == 0) continue;
            list[i+j*5] = true;
        }
    }

    auto key = list.keys;
    key.sort;

    foreach (k; key) k.writeln;
}