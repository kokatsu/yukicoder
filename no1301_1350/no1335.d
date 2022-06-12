import std;

void main() {
    auto A = readln.chomp;

    auto S = readln.chomp.to!(dchar[]);

    foreach (ref s; S) {
        if (s.isNumber) s = A[s-'0'];
    }

    S.writeln;
}