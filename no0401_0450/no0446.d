import std;

void main() {
    auto A = readln.chomp;
    auto B = readln.chomp;

    bool isOK = true;

    isOK &= A.isNumeric;
    isOK &= B.isNumeric;

    isOK &= !(A.length > 1 && A.front == '0');
    isOK &= !(B.length > 1 && B.front == '0');

    if (isOK) {
        auto a = A.to!int, b = B.to!int;
        int l = 12345;

        isOK &= a <= l;
        isOK &= b <= l;
    }

    writeln(isOK ? "OK" : "NG");
}