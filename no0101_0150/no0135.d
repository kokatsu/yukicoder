import std;

void main() {
    int N;
    readf("%d\n", N);

    auto X = readln.chomp.split.to!(int[]);

    X.sort;

    auto U = X.uniq.array;
    auto len = U.length;

    int res;
    foreach (i; 1 .. len) {
        if (res == 0) res = U[i] - U[i-1];
        else res = min(res, U[i]-U[i-1]);
    }

    res.writeln;
}