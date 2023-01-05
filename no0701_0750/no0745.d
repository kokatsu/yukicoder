import std;

enum long P = 100, G = 50, M = 10;
enum long COMBO = 100;

void main() {
    long A, B, C, D;
    readf("%d %d %d %d\n", A, B, C, D);

    if (D >= M) {
        writeln("Impossible");
        return;
    }

    long score, X = 1, Y;

    while (B > 0) {
        if (Y + B >= COMBO) {
            score += X * (COMBO - Y) * G;
            B -= COMBO - Y;
            X *= 2, Y = 0;
        }
        else {
            score += X * B * G;
            Y = B;
            B = 0;
        }
    }

    while (A > 0) {
        if (Y + A >= COMBO) {
            score += X * (COMBO - Y) * P;
            A -= COMBO - Y;
            X *= 2, Y = 0;
        }
        else {
            score += X * A * P;
            Y = A;
            A = 0;
        }
    }

    writeln("Possible");
    score.writeln;
}