import std;

void main() {
    int N, K;
    readf("%d %d\n", N, K);

    auto a = new int[](N-1), b = new int[](N-1);
    foreach (ref x, ref y; zip(a, b)) readf("%d %d\n", x, y);

    int res = (K <= N ? K - 1 : -1);
    res.writeln;
}