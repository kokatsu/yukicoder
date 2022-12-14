import std;

struct Pole {
    int to;
    real dist;
}

void main() {
    int N, M, X, Y;
    readf("%d %d\n%d %d\n", N, M, X, Y);

    --X, --Y;

    auto p = new real[](N), q = new real[](N);
    foreach (i; 0 .. N) readf("%f %f\n", p[i], q[i]);

    auto poles = new int[][](N);
    foreach (_; 0 .. M) {
        int P, Q;
        readf("%d %d\n", P, Q);

        --P, --Q;
        poles[P] ~= Q, poles[Q] ~= P;
    }

    auto dists = new real[](N);
    dists[] = real.max;
    dists[X] = 0.0;

    auto heap = new BinaryHeap!(Array!Pole, "a.dist > b.dist")();
    heap.insert(Pole(X, 0.0));
    while (!heap.empty) {
        auto f = heap.front;
        heap.popFront;

        if (f.dist > dists[f.to]) continue;

        foreach (pole; poles[f.to]) {
            real d = f.dist + hypot(p[f.to]-p[pole], q[f.to]-q[pole]);
            if (d < dists[pole]) {
                dists[pole] = d;
                heap.insert(Pole(pole, d));
            }
        }
    }

    real res = dists[Y];
    writefln("%.10f", res);
}