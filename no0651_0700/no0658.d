import std;

void main() {
    int Q;
    readf("%d\n", Q);

    int M = 17;

    auto start = [0, 0, 0, 1];
    auto tetranacci = start;

    int t = 1;
    do {
        tetranacci ~= t;
        t = (t + tetranacci[$-1] - tetranacci[$-5] + M) % M;
    } while (tetranacci[$-4..$] != start);

    auto nmax = tetranacci.length - 4;

    foreach (i; 0 .. Q) {
        long n;
        readf("%d\n", n);

        tetranacci[(n-1)%nmax].writeln;
    }
}