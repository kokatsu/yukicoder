import std;

void main() {
    long N;
    readf("%d\n", N);

    bool isOver = (N >= 50);
    long res;
    if (!isOver) {
        long M = 10L ^^ 12;

        res = 1;
        foreach (i; 2 .. N+1) {
            res *= i;
            if (res >= M) {
                res %= M;
                isOver = true;
            }
        }
    }

    writeln(isOver ? format("%012d", res) : format("%d", res));
}