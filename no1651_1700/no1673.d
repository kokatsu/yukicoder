import std;

void main() {
    int N, Q;
    readf("%d %d\n", N, Q);

    int res;
    auto lights = new bool[](N+1);
    foreach (_; 0 .. Q) {
        int L, R;
        readf("%d %d\n", L, R);

        foreach (i; L .. R+1) {
            lights[i] = !lights[i];
            res += (lights[i] ? 1 : -1);
        }

        res.writeln;
    }
}