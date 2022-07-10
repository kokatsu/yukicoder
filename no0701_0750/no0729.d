import std;

void main() {
    auto S = readln.chomp.to!(dchar[]);

    int i, j;
    readf("%d %d\n", i, j);

    S.swapAt(i, j);

    S.writeln;
}