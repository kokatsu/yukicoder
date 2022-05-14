import std;

void main() {
    auto X = readln.chomp.to!(dchar[]);

    X.sort!"a > b";

    auto len = X.length;
    foreach_reverse (i; 1 .. len) {
        if (X[i-1] > X[i] && !(i == 1 && X[i] == '0')) {
            swap(X[i-1], X[i]);
            X.writeln;
            return;
        }
    }

    writeln(-1);
}