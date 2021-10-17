import std;

void main() {
    int A, B;
    readf("%d %d\n", A, B);

    foreach (i; A .. B+1) {
        int N = i;

        bool contain3;
        while (N > 0) {
            if (N % 10 == 3) {
                contain3 = true;
                break;
            }
            N /= 10;
        }

        if (i % 3 == 0 || contain3) {
            i.writeln;
        }
    }
}