import std;

void main() {
    int N;
    readf("%d\n", N);

    foreach (_; 0 .. N) {
        auto L = readln.chomp.split.to!(int[]);
        L.popFront;

        L.sort!"a > b";

        writefln("%(%s %)", L);
    }
}