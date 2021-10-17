import std;
import core.bitop;

struct Sugoroku {
    int pos;
    int cnt;
}

void main() {
    int N;
    readf("%d\n", N);

    auto heap = new BinaryHeap!(Array!Sugoroku, "a.cnt > b.cnt")();
    heap.insert(Sugoroku(1, 1));

    auto passed = new bool[](N+1);
    passed[0..2] = true;

    int res = int.max;

    while (!heap.empty) {
        Sugoroku sugoroku = heap.front;
        heap.popFront;

        if (sugoroku.pos == N) {
            res = min(res, sugoroku.cnt);
        }

        int forward = sugoroku.pos + sugoroku.pos.popcnt;
        if (forward == N) {
            res = min(res, sugoroku.cnt+1);
        }
        else if (forward < N && !passed[forward]) {
            passed[forward] = true;
            heap.insert(Sugoroku(forward, sugoroku.cnt+1));
        }

        int backward = sugoroku.pos - sugoroku.pos.popcnt;
        if (backward >= 1 && !passed[backward]) {
            passed[backward] = true;
            heap.insert(Sugoroku(backward, sugoroku.cnt+1));
        }
    }

    if (res == int.max) {
        res = -1;
    }

    res.writeln;
}