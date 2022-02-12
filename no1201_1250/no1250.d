import std;

void main() {
    long N, H;
    readf("%d %d\n", N, H);

    auto A = readln.chomp.split.to!(long[]);

    long M = 1;
    foreach (a; A) {
        M = (M * a) % H;
    }

    writeln(M == 0 ? "YES" : "NO");
}