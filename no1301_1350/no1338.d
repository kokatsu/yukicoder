import std;

void main() {
    long H, W, Q;
    readf("%d %d %d\n", H, W, Q);

    long num = H * W;
    long[long] sit;
    foreach (_; 0 .. Q) {
        long Y, X;
        readf("%d %d\n", Y, X);

        if (X in sit) {
            if (Y < sit[X]) {
                num -= sit[X] - Y;
                sit[X] = Y;
            }
        }
        else {
            num -= H - Y + 1;
            sit[X] = Y;
        }

        num.writeln;
    }
}