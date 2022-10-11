import std;

void main() {
    long N;
    readf("%d\n", N);

    string digs = "0369";

    long res = min(100, N) / 3 - 3;

    void f(string s) {
        foreach (d; digs) {
            string t = s ~ d.to!string;
            if (t.to!long <= N) {
                if (t.length > 2) ++res;
                f(t);
            }
        }
    }

    foreach (i; 1 .. 4) {
        f(digs[i].to!string);
    }

    res.writeln;
}