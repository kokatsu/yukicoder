import std;

void main() {
    long A, B;
    readf("%d %d\n", A, B);

    bool isOK = true;
    if (A != B) {
        isOK &= (A * B == 8 && gcd(A, B) == 2);
    }

    writeln(isOK ? "Yes" : "No");
}