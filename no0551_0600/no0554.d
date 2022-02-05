import std;

void main() {
    long n;
    readf("%d\n", n);

    long M = 10 ^^ 9 + 7;

    auto odd = new long[](n/2+1), even = new long[](n/2+1);
    odd[0] = 1, even[1] = 2;

    long res;
    if (n <= 2) {
        res = n;
    }

    foreach (i; 3 .. n+1) {
        long d = i / 2, r = i % 2;

        if (r == 1) {
            res = i * even[d] % M;
            odd[d] = (res + odd[d-1]) % M;
        }
        else {
            res = i * odd[d-1] % M;
            even[d] = (res + even[d-1]) % M;
        }
    }

    res.writeln;
}