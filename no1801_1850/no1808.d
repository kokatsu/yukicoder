import std;

void main() {
    long N, M;
    readf("%d %d\n", N, M);

    auto A = readln.chomp.split.to!(long[]);

    long ok, ng = long.max / 2;
    while (ng - ok > 1) {
        long mid = (ok + ng) / 2;

        bool isOK = true;
        long rem;
        foreach (a; A) {
            rem -= (mid - a);

            if (rem < 0) {
                isOK = false;
                break;
            }
        }

        (isOK ? ok : ng) = mid;
    }

    long res = ok / M;
    res.writeln;
}