import std;

void main() {
    int N, M ,X;
    readf("%d %d %d\n", N, M, X);

    auto A = new long[](N), B = new long[](N);
    foreach (i; 0 .. N) {
        readf("%d %d\n", A[i], B[i]);
    }

    int K;
    readf("%d\n", K);

    auto C = readln.chomp.split.to!(long[]);

    zip(A, B).sort!((a, b) => a[0] > b[0]);
    auto used = new bool[](M+1);
    auto heap = new BinaryHeap!(Array!long, "a < b")();
    foreach (i; 0 .. N) {
        if (used[B[i]]) {
            heap.insert(A[i]);
        }
        else {
            heap.insert(A[i]+X);
            used[B[i]] = true;
        }
    }

    auto cumsum = heap.array.cumulativeFold!"a + b".array;
    long res;
    foreach (c; C) {
        if (c == 0) {
            continue;
        }
        res += cumsum[c-1];
    }

    res.writeln;
}