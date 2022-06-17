import std;

void main() {
    long N;
    readf("%d\n", N);

    bool S(long v, long t, long m, long l) {
        long C = 36;

        l *= C * C * m * (10 ^^ 2);
        long r = C * m * v * t + v * v * 5;

        return l >= r;
    }

    foreach (_; 0 .. N) {
        long T1, T2, mu1, mu2, L1, L2;
        readf("%d.%d %d.%d %d.%d\n", T1, T2, mu1, mu2, L1, L2);

        long T = T1 * 100 + T2;
        long mu = mu1 * 100 + mu2;
        long L = L1 * 100 + L2;

        long ok, ng = 6_000_000;
        while (ng - ok > 1) {
            long mid = (ok + ng) / 2;
            (S(mid, T, mu, L) ? ok : ng) = mid;
        }

        long I = ok / 1000;
        auto F = format("%03d", ok % 1000);
        F.popBack;
        writeln(I, ".", F);
    }
}