import std;
import core.checkedint;

void main() {
    long A, B, C;
    readf("%d %d %d\n", A, B, C);

    long ok = C, ng;
    while (ok - ng > 1) {
        long mid = (ok + ng) / 2;

        long d = mid / A;
        
        bool isOver;
        long M = muls(B, d, isOver) + mid - d;

        if (isOver || M >= C) {
            ok = mid;
        }
        else {
            ng = mid;
        }
    }

    ok.writeln;
}