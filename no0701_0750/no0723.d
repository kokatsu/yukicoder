import std;

void main() {
    int N, X;
    readf("%d %d\n", N, X);

    auto a = readln.chomp.split.to!(int[]);

    a.sort;
    auto b = a.assumeSorted;

    long res;
    while (!b.empty) {
        int f = b.front;
        if (b.contains(X-f)) {
            auto l = b.equalRange(X-f).length;
            if (X == 2 * f) {
                res += 2 * l - 1;
            }
            else {
                res += 2 * l;
            }
        }
        b.popFront;
    }

    res.writeln;
}