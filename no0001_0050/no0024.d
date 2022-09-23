import std;

void main() {
    int N;
    readf("%d\n", N);

    auto nums = new bool[](10);
    nums[] = true;
    foreach (_; 0 .. N) {
        int A, B, C, D;
        string R;
        readf("%d %d %d %d %s\n", A, B, C, D, R);

        if (R == "YES") {
            foreach (i; 0 .. 10) {
                if (i == A || i == B || i == C || i == D) continue;
                nums[i] = false;
            }
        }
        else {
            foreach (i; 0 .. 10) {
                if (i == A || i == B || i == C || i == D) {
                    nums[i] = false;
                }
            }
        }
    }

    foreach (i, num; nums) {
        if (num) i.writeln;
    }
}