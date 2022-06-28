import std;

void main() {
    auto A = readln.chomp.split.to!(int[]);

    A.sort;

    auto len = A.length;
    bool isOK = true;
    foreach (i; 1 .. len) {
        isOK &= (A[i-1] + 1 == A[i]);
    }

    writeln(isOK ? "Yes" : "No");
}