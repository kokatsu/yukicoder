import std;

void main() {
    long n, a;
    readf("%d %d\n", n, a);

    auto x = readln.chomp.split.to!(long[]);

    bool isOK = (n * a == x.sum);
    writeln(isOK ? "YES" : "NO");
}