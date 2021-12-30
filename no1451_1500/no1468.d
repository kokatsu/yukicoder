import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split;
    auto B = readln.chomp.split;

    int[string] colorA, colorB;
    foreach (a; A) ++colorA[a];
    foreach (b; B) ++colorB[b];

    foreach (key; colorA.byKey) {
        if (!(key in colorB) || colorA[key] != colorB[key]) {
            key.writeln;
            return;
        }
    }
}