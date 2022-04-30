import std;

void main() {
    int N;
    readf("%d\n", N);

    int mx;
    int[string] list;
    foreach (_; 0 .. N) {
        auto A = readln.chomp;
        mx = max(mx, ++list[A]);
    }

    bool isOK;
    if (N % 2 == 0) isOK = (N >= mx * 2);
    else isOK = (N >= mx * 2 - 1);

    writeln(isOK ? "YES" : "NO");
}