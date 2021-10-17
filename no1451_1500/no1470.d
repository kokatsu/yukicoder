import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(int[]);

    auto one = iota(0, N).map!(a => A[a] == 1).cumulativeFold!"a + b".array;
    auto two = iota(0, N).map!(a => A[a] == 2).cumulativeFold!"a + b".array;

    long res;
    foreach (i; 0 .. N-1) {
        int rem = N - i - 1;
        int cnt1 = one[N-1] - one[i];
        int cnt2 = two[N-1] - two[i];
        if (A[i] == 1) {
            res += cnt2 * 3 + (rem - cnt2) * 2; 
        }
        else if (A[i] == 2) {
            res += cnt1 * 3 + (rem - cnt1);
        }
        else {
            res += cnt1 * 2 + (rem - cnt1);
        }
    }

    res.writeln;
}