import std;

void main() {
    int N;
    readf("%d\n", N);

    foreach (_; 0 .. N) {
        auto S = readln.chomp.to!int;
        S.writeln;
    }
}