import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(int[]);
    auto B = readln.chomp.split.to!(int[]);
    auto C = readln.chomp.split.to!(int[]);

    long f(int[] arr) {
        long res;
        foreach (a; arr) {
            if (a % 3 != 0) ++res;
        }
        return res;
    }

    long cntA = f(A), cntB = f(B), cntC = f(C);

    long res = cntA * cntB * cntC;
    res.writeln;
}