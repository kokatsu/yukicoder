import std;

void main() {
    int N, D;
    readf("%d %d\n", N, D);

    auto P = new long[](N), Q = new long[](N);
    foreach (i; 0 .. N) {
        readf("%d %d\n", P[i], Q[i]);
    }

    long M = long.min / 2;

    long ok = M, ng;
    while (ng - ok > 1) {
        long mid = (ok + ng) / 2;

        auto dp = new long[][](D, N);        
        foreach (i; 0 .. D) {
            dp[i][] = M;
        }

        foreach (i; 0 .. N) {
            if (-P[i] >= mid) {
                dp[0][i] = Q[i] - P[i];
            }
        }

        foreach (i; 0 .. D-1) {
            auto dpL = new long[](N+1), dpR = new long[](N+1);
            dpL[] = M, dpR[] = M;
            foreach (j; 0 .. N) {
                dpL[j+1] = max(dpL[j], dp[i][j]);
                dpR[N-j-1] = max(dpR[N-j], dp[i][N-j-1]);
            }

            foreach (j; 0 .. N) {
                long tmp = max(dpL[j], dpR[j+1]);
                if (tmp - P[j] >= mid) {
                    dp[i+1][j] = tmp + Q[j] - P[j];
                }
            }
        }

        bool isOK;
        foreach (i; 0 .. N) {
            if (dp[D-1][i] > M) {
                isOK = true;
                break;
            }
        }

        if (isOK) {
            ok = mid;
        }
        else {
            ng = mid;
        }
    }

    ok.writeln;
}