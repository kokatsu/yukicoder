import std;

void main() {
    long N;
    readf("%d\n", N);

    auto a = readln.chomp.split.to!(long[]);

    long[] divisors;
    long S = a.sum, d = 1;
    while (d * d <= S) {
        if (S % d == 0) {
            divisors ~= d;
            if (d * d != S) divisors ~= S / d;
        }

        ++d;
    }

    long res;
    foreach (divisor; divisors) {
        bool isOK = true;
        long cnt, num;
        foreach (x; a) {
            num += x;

            if (num == divisor) {
                ++cnt, num = 0;
            }
            else if (num > divisor) {
                isOK = false;
                break;
            }
        }

        isOK &= (num == 0);

        if (isOK) res = max(res, cnt);
    }

    res.writeln;
}