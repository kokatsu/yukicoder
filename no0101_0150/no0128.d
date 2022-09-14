import std;

void main() {
    long N, M;
    readf("%d\n%d\n", N, M);

    long bill = 10 ^^ 3;

    long res = (N / bill) / M * bill;
    res.writeln;
}