import std;

void main() {
    int A;
    readf("%d\n", A);

    int B = 17;

    foreach (i; 8 .. A) {
        int num, rem = A, base = 1;
        while (num < B && rem > 0) {
            long d = rem % i;
            if (d >= 10) break;

            num += d * base, rem /= i, base *= 10;
        }

        if (num == B) {
            i.writeln;
            return;
        }
    }

    writeln(-1);
}