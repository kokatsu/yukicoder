import std;

void main() {
    int A, B;
    readf("%d %d\n", A, B);

    bool isOK;
    foreach (i; iota(B, A+1, B)) {
        isOK |= (A % i == 0);
    }

    writeln(isOK ? "YES" : "NO");
}