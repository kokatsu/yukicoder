import std;

void main() {
    int N;
    readf("%d\n", N);

    auto res = '0'.repeat(N).to!string ~ "10";
    res.writeln;
}