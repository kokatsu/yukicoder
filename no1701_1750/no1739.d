import std;

void main() {
    long N, A, B, X, Y;
    readf("%d %d %d %d %d\n", N, A, B, X, Y);

    auto H = readln.chomp.split.to!(long[]);

    long ok = 10 ^^ 9, ng = -1;
    while (ok - ng > 1) {
        long mid = (ok + ng) / 2;

        auto D = H.dup;
        D[] -= mid;
        auto P = D.heapify;

        bool isOK;
        foreach (i; 0 .. A) {
            if (P.empty) {
                isOK = true;
                break;
            }

            auto f = P.front;
            P.popFront;

            f = max(0, f-X);
            if (f > 0) {
                P.insert(f);
            }
        }

        if (!isOK) {
            long S;
            while (!P.empty) {
                auto f = P.front;
                P.popFront;

                if (f > 0) {
                    S += f;
                }
            }

            if (S <= B * Y) {
                isOK = true;
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