import std;

void main() {
    int T;
    readf("%d\n", T);

    foreach (_; 0 .. T) {
        int N;
        readf("%d\n", N);

        auto A = readln.chomp.split.to!(long[]);

        long S = A.sum, cnt = S / 3;

        bool isOK = (S % 3 == 0);
        foreach (a; A) isOK &= (a <= cnt);

        writeln(isOK ? "Yes" : "No");
    }
}