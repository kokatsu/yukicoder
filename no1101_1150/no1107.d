import std;

void main() {
    auto A = readln.chomp.split.to!(long[]);

    writeln(A[0] < A[1] && A[2] > A[3] ? "YES" : "NO");
}