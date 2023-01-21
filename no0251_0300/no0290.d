import std;

void main() {
    int N;
    string S;
    readf("%d\n%s\n", N, S);

    bool isOK = (N >= 4);
    if (!isOK) {
        foreach (i; 0 .. N-1) {
            isOK |= (S[i] == S[i+1]);
        }
    }

    writeln(isOK ? "YES" : "NO");
}