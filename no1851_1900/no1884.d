import std;

void main() {
    long N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(long[]);

    A.sort!"a > b";

    bool diff, diff0;
    long mx = A[0], mn = A[0];
    long[] B;
    foreach (i; 1 .. N) {
        if (A[i] == 0) break;

        long d = A[i-1] - A[i];
        (d > 0 ? diff : diff0) = true;
        B ~= d;
        mn = A[i];
    }

    bool isOK = true;
    if (!B.empty) {
        long g = B.fold!gcd;

        if (diff0) isOK = !diff;
        else isOK = g >= (mx - mn + N - 2) / (N - 1);
    }

    writeln(isOK ? "Yes" : "No");
}