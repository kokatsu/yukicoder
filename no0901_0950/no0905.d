import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(long[]);

    auto inc = new int[](N), dec = new int[](N);
    foreach (i; 1 .. N) {
        inc[i] += inc[i-1], dec[i] += dec[i-1];

        if (A[i] >= A[i-1]) {
            ++inc[i];
        }

        if (A[i] <= A[i-1]) {
            ++dec[i];
        }
    }

    int Q;
    readf("%d\n", Q);

    foreach (i; 0 .. Q) {
        int l, r;
        readf("%d %d\n", l, r);

        int f, g;

        if (inc[r] - inc[l] == r - l) {
            f = 1;
        }

        if (dec[r] - dec[l] == r - l) {
            g = 1;
        }

        writeln(f, " ", g);
    }
}