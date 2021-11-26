import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(int[]);

    long f(long cnt) {
        long l = (cnt + 1) / 2;
        return l * (cnt - l + 1);
    }

    long res, cnt;
    bool isMoving;
    foreach (i; 0 .. N-1) {
        if (A[i] == 1) {
            if (isMoving) {
                if (cnt % 2 == 0) {
                    ++cnt;
                }
                else {
                    res += f(cnt);
                    cnt = 1;
                }
            }
            else {
                isMoving = true;
                ++cnt;
            }
        }
        else {
            if (isMoving) {
                if (cnt % 2 == 1) {
                    ++cnt;
                }
                else {
                    res += f(cnt);
                    isMoving = false;
                    cnt = 0;
                }
            }
        }
    }
    res += f(cnt);

    res.writeln;
}