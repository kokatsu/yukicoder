import std;

void main() {
    long M;
    readf("%d\n", M);

    long S = M.to!real.sqrt.floor.to!long;
    foreach (i; 2 .. S+1) {
        if (M % i == 0) {
            writeln(i, " ", M/i);
            return;
        }
    }

    writeln(1, " ", M);
}