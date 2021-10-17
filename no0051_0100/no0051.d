import std;

void main() {
    long W, D;
    readf("%d\n%d\n", W, D);

    while (D > 1) {
        W -= W / (D * D);
        --D;
    }

    W.writeln;
}