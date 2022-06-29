import std;

void main() {
    int X;
    readf("%d\n", X);

    int f(int n) {
        return n * (n + 3);
    }

    bool isOK;
    foreach (i; 0 .. 3) {
        isOK |= (f(i) == X);
    }

    writeln(isOK ? "Yes" : "No");
}