import std;

void main() {
    string S = readln.chomp;

    ulong N = S.length;

    long[long] list;

    void f(long num, long plus, ulong cnt) {
        if (cnt == N) {
            ++list[num+plus];
        }
        else {
            long d = S[cnt] - '0';
            f(num+plus*10+d, 0, cnt+1);
            f(num, plus*10+d, cnt+1);
        }
    }

    f(0L, 0L, 0L);

    long res;
    foreach (val; list.byValue) {
        res += val / 2;
    }

    foreach (key; list.byKey) {
        if (key == 1) {
            res -= list[key] / 2;
        }

        long m = 2;
        while (m * m <= key) {
            if (key % m == 0) {
                res -= list[key] / 2;
                break;
            }

            ++m;
        }
    }

    res.writeln;
}