import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto A = readln.chomp.split.to!(int[]);

    auto last = new bool[](N+1);
    foreach (a; A) last[a] = true;

    int res;
    auto isOpened = new bool[](N+1);
    foreach_reverse (i; 1 .. N+1) {
        int[] divisors;
        int d = 1;
        while (d * d <= i) {
            if (i % d == 0) {
                divisors ~= d;
                if (d * d != i) divisors ~= i / d;
            }

            ++d;
        }

        if (isOpened[i] == last[i]) {
            ++res;
        }
        else {
            foreach (divisor; divisors) {
                isOpened[divisor] = !isOpened[divisor];
            }
        }
    }

    res.writeln;
}