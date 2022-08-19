import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(int[]);

    int cnt;
    int X;
    foreach (a; A) {
        if (a == -1) ++cnt;
        else X ^= a;
    }

    bool isOK = (X > 0);
    isOK |= (cnt % 2 == 1);

    writeln(isOK ? "First" : "Second");
}