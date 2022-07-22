import std;

void main() {
    int T;
    readf("%d\n", T);

    int[] ones = [1, 3, 4, 5, 7, 8];

    foreach (_; 0 .. T) {
        int N;
        readf("%d\n", N);

        bool isOK = true;
        if (ones.canFind(N)) isOK = false;

        writeln(isOK ? 2 : 1);
    }
}