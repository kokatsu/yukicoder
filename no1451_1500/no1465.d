import std;

void main() {
    int N, K;
    readf("%d %d\n", N, K);

    auto list = new bool[](N+1);

    void f(int num, int cnt) {
        if (cnt > K || list[num]) {
            return;
        }

        list[num] = true;

        if (num % 2 == 0) {
            f(num/2, cnt+1);
        }

        if (num > 3) {
            f(num-3, cnt+1);
        }
    }

    f(N, 0);

    writeln(list[1] ? "YES" : "NO");
}