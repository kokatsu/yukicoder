import std;

void main() {
    int N, K;
    readf("%d %d\n", N, K);

    int diff = N - K;

    if (diff == 0) {
        writeln("Drew");
    }
    else if (diff == -1 || diff == 2) {
        writeln("Won");
    }
    else {
        writeln("Lost");
    }
}