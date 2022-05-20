import std;

void main() {
    auto S = new string[](3);
    foreach (i; 0 .. 3) S[i] = readln.chomp;

    bool isOK = true;
    foreach (i; 0 .. 3) {
        foreach (j; 1 .. 3) {
            isOK &= (S[i][j-1] != S[i][j]);
            isOK &= (S[j-1][i] != S[j][i]);
        }
    }

    writeln(isOK ? "Yes" : "No");
}