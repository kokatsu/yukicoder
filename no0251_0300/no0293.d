import std;

void main() {
    auto input = readln.chomp.split;

    string A = input[0], B = input[1];

    if (A.length > B.length) {
        A.writeln;
    }
    else if (A.length < B.length) {
        B.writeln;
    }
    else {
        foreach (a, b; zip(A, B)) {
            if (a == '4' && b == '7') {
                A.writeln;
                break;
            }
            else if (a == '7' && b == '4') {
                B.writeln;
                break;
            }
            else {
                if (a > b) {
                    A.writeln;
                    break;
                }
                else if (a < b) {
                    B.writeln;
                    break;
                }
            }
        }
    }
}