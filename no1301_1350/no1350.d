import std;

void main() {
    long A, B, K;
    readf("%d %d %d\n", A, B, K);

    long l = lcm(A, B);

    long ng, ok = long.max / 2;
    while (ok - ng > 1) {
        long mid = (ok + ng) / 2;

        long N = mid / A + mid / B - mid / l;
        if (N >= K) {
            ok = mid;
        }
        else {
            ng = mid;
        }
    }

    ok.writeln;
}