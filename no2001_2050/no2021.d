import std;

void main() {
    int N;
    readf("%d\n", N);

    auto S = readln.chomp;

    int res = N - 1, cnt;
    foreach (i; 1 .. N) {
        if (i > 1 && S[i-2] == 'B' && S[i] == 'B') --res;
        else if (S[i-1] == 'B' && S[i] == 'B') ++cnt;
    }

    res -= max(0, cnt-1);

    res.writeln;
}