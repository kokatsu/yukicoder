import std;

struct S {
    int pos, cnt;
}

void main() {
    int N;
    readf("%d\n", N);

    auto R = readln.chomp.split.to!(int[]);

    int res;

    auto seen = new bool[](N);
    seen[0] = true;

    --N;
    R[] -= 1;

    auto heap = new BinaryHeap!(Array!S, "a.cnt == b.cnt ? a.pos < b.pos : a.cnt > b.cnt")();
    heap.insert(S(0, 0));
    while (!heap.empty) {
        auto f = heap.front;
        heap.popFront;

        if (f.pos == N) {
            res = f.cnt;
            break;
        }

        foreach (i; f.pos .. R[f.pos]+1) {
            if (!seen[i]) {
                heap.insert(S(i, f.cnt+1));
                seen[i] = true;
            }
        }
    }

    res.writeln;
}