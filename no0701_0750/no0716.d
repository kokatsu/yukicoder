import std;

void main() {
    int N;
    readf("%d\n", N);

    auto a = readln.chomp.split.to!(int[]);

    int mn = int.max, mx = a[N-1] - a[0];
    foreach (i; 1 .. N) mn = min(mn, a[i]-a[i-1]);

    mn.writeln;
    mx.writeln;
}