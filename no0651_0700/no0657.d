import std;

void main() {
    int Q;
    readf("%d\n", Q);

    int M = 17;

    int nmax = 10 ^^ 6 + 1;
    auto tetranacci = new int[](nmax);
    tetranacci[4] = 1;
    int t = 1;
    foreach (i; 5 .. nmax) {
        tetranacci[i] = t;
        t = (t + tetranacci[i] - tetranacci[i-4] + M) % M;
    }

    foreach (i; 0 .. Q) {
        int n;
        readf("%d\n", n);

        tetranacci[n].writeln;
    }
}