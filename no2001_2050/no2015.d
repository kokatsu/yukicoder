import std;

void main() {
    int T;
    readf("%d\n", T);

    foreach (_; 0 .. T) {
        int N, M;
        readf("%d %d\n", N, M);

        auto A = readln.chomp.split.to!(int[]);

        bool isOK = true;
        foreach (i; 1 .. N) {
            int d = M - A[i-1];
            isOK &= (A[i] >= d);
        }

        writeln(isOK ? "Yes" : "No");
    }
}