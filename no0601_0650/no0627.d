import std;

void main() {
    int T;
    readf("%d\n", T);

    int P;
    bool isOK = true;
    foreach (_; 0 .. T) {
        int X;
        readf("%d\n", X);

        int diff = abs(P-X);
        isOK &= (diff == 1);

        P = X;
    }

    writeln(isOK ? 'T' : 'F');
}