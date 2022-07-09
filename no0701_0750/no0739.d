import std;

void main() {
    auto S = readln.chomp;

    auto len = S.length;

    bool isOK;
    if (len % 2 == 0) {
        isOK = (S[0..len/2] == S[len/2..len]);
    }

    writeln(isOK ? "YES" : "NO");
}