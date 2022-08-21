import std;

void main() {
    int N;
    readf("%d\n", N);

    auto x = readln.chomp.split.to!(int[]);

    x.sort;

    bool isOK = true;
    foreach (i; 2 .. N) {
        isOK &= (x[i] - x[i-1] > 0 && x[i] - x[i-1] == x[i-1] - x[i-2]);
    }

    writeln(isOK ? "YES" : "NO");
}