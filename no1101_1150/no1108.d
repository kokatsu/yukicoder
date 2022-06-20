import std;

void main() {
    int N, H;
    readf("%d %d\n", N, H);

    auto T = readln.chomp.split.to!(int[]);

    T[] += H;

    writefln("%(%s %)", T);
}