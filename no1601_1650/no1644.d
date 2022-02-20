import std;

void main() {
    int K;
    readf("%d\n", K);

    int[] dig = iota(1, 9).array;

    int res;
    do {
        int num;
        foreach (d; dig) {
            num = (num * 10 + d);
        }

        if (num % K == 0) ++res;
    } while (dig.nextPermutation);

    res.writeln;
}