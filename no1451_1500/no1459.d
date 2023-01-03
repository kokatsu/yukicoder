import std;

void main() {
    long N;
    readf("%d\n", N);

    long ok = N, ng;
    while (ok - ng > 1) {
        long mid = (ok + ng) / 2;
        (mid * (mid + 1) / 2  >= N ? ok : ng) = mid;
    }

    ok.writeln;
}