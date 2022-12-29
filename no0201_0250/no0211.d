import std;

enum int[] P = [2, 3, 5, 7, 11, 13];
enum int[] Q = [4, 6, 8, 9, 10, 12];

void main() {
    int K;
    readf("%d\n", K);


    int S, C;
    foreach (p; P) {
        foreach (q; Q) {
            ++S;
            if (p * q == K) ++C;
        }
    }

    real res = C.to!real / S;
    writefln("%.15f", res);
}