import std;

void main() {
    long A, B;
    readf("%d %d\n", A, B);

    A *= 1000L, B *= 3600L;

    string res = "same";
    if (A > B) res = "KoD";
    if (A < B) res = "blackyuki";

    res.writeln;
}