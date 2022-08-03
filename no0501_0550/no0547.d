import std;

void main() {
    int N;
    readf("%d\n", N);

    auto S = readln.chomp.split;
    auto T = readln.chomp.split;

    foreach (i; 0 .. N) {
        if (S[i] == T[i]) continue;

        writeln(i+1);
        S[i].writeln;
        T[i].writeln;

        return;
    }
}