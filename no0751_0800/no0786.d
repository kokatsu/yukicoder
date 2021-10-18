import std;

void main() {
    int N;
    readf("%d\n", N);

    auto stairs = new long[](N+1);
    stairs[0..2] = 1;
    foreach (i; 2 .. N+1) {
        stairs[i] += stairs[i-2..i].sum;
    }

    stairs[N].writeln;
}