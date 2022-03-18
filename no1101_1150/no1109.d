import std;

void main() {
    int N;
    readf("%d\n", N);

    auto T = readln.chomp.split.to!(int[]);

    int M = 12;
    auto list = [0, 2, 4, 5, 7, 9, 11];

    int[] D;
    foreach (i; 0 .. M) {
        auto isKey = new bool[](M);
        foreach (l; list) isKey[(i+l)%M] = true;

        bool isOK = true;
        foreach (t; T) isOK &= isKey[t];

        if (isOK) D ~= i;
    }

    writeln(D.length == 1 ? D[0] : -1);
}