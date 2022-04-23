import std;

void main() {
    long N;
    readf("%d\n", N);

    auto S = readln.chomp;

    long res;
    foreach (i; 0 .. N-2) {
        if (S[i] != 'U') continue;

        foreach (j; i+1 .. N-1) {
            if (S[j] != 'M') continue;

            long k = j * 2 - i;
            if (k < N && S[k] == 'G') ++res;
        }
    }

    res.writeln;
}