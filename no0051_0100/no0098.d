import std;

void main() {
    long Xp, Yp;
    readf("%d %d\n", Xp, Yp);

    long Rs = (Xp * Xp + Yp * Yp) * 4;

    long ok = 10 ^^ 6, ng = -1;
    while (ok - ng > 1) {
        long mid = (ok + ng) / 2;

        (mid * mid > Rs ? ok : ng) = mid;
    }

    ok.writeln;
}