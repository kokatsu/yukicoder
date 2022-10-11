import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(int[]);

    auto res = new int[](A[0]+1);
    res[0] = N;
    foreach (a; A) --res[a];

    foreach (i; 0 .. A[0]) res[i+1] += res[i];

    res.popBack;

    writefln("%(%s %)", res);
}