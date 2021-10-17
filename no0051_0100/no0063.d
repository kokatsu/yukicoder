import std;

void main() {
    int L, K;
    readf("%d %d\n", L, K);

    writeln(((L - 1) / (2 * K)) * K);
}