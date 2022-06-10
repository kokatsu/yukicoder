import std;

void main() {
    long N, M;
    readf("%d %d\n", N, M);

    auto A = readln.chomp.split.to!(long[]);

    long[long] list;
    foreach (a; A) ++list[a%M];

    bool[long] used;
    long res;
    foreach (key, val; list) {
        if (key in used) continue;

        if ((key * 2) % M == 0) {
            ++res;
        }
        else {
            long d = M - key, num = val;
            if (d in list) {
                if (num < list[d]) num = list[d];
                used[d] = true;
            }

            res += num;
        }

        used[key] = true;
    }

    res.writeln;
}