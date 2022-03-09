import std;

void main() {
    long N;
    readf("%d\n", N);

    bool[long] list;
    list[1] = true;
    foreach (_; 0 .. N) {
        auto key = list.keys;
        foreach (k; key) {
            foreach (i; 0 .. 4) {
                list[k*(i*i+1)] = true;
            }
        }
    }

    auto factors = list.keys;
    factors.sort;

    foreach (f; factors) f.writeln;
}