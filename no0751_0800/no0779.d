import std;

enum Date L = Date(1989, 1, 8);
enum Date R = Date(2019, 4, 30);

void main() {
    int Y, M, D;
    readf("%d %d %d\n", Y, M, D);

    Date T = Date(Y, M, D);

    writeln(L <= T && T <= R ? "Yes" : "No");
}