import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = new int[](N);
    foreach (i; 0 .. N) {
        readf("%d\n", A[i]);
    }

    A.sort;

    int res = 1;
    foreach (i; 1 .. N) {
        if (A[i] == A[i-1] + 1) {
            ++res;
            break;
        }
    }

    res.writeln;
}