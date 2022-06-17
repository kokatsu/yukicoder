import std;

void main() {
    int I, J, K;
    readf("%d %d %d\n", I, J, K);

    writeln(I <= min(J, K) ? "Yes" : "No");
}