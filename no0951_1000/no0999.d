import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(long[]);

    auto odd = new long[](N+1), even = new long[](N+1);
    foreach (i; 0 .. N) {
        odd[i+1] = odd[i] + A[2*i];
        even[i+1] = even[i] + A[2*i+1];
    }

    long res;
    foreach (i; 0 .. N+1) {
        res = max(res, (odd[i]-even[i])*2-odd[N]+even[N]);
    }

    res.writeln;
}