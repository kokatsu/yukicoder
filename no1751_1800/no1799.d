import std;

void main() {
    long N, S;
    readf("%d %d\n", N, S);

    bool isOK = ((S >= 25) && (S <= N * 29));

    writeln(isOK ? "Yes" : "No");
}