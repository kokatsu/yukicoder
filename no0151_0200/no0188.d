import std;

void main() {
    int[] dates = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];

    int res;

    foreach (i; 1 .. 32) {
        int X = i / 10 + i % 10;

        if (i <= dates[X-1]) {
            ++res;
        }
    }

    res.writeln;
}