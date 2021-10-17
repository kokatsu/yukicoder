import std;

void main() {
    string S = readln.chomp;

    S = '*' ~ S;
    auto len = S.length;

    int res, num;
    dchar op;

    foreach (i; 0 .. len) {
        if (S[i].isNumber) {
            num = 10 * num + (S[i] - '0');
        }
        else {
            if (op == '*') {
                res += num;
            }
            else {
                res *= num;
            }
            num = 0;
            op = S[i];
        }
    }

    if (op == '*') {
        res += num;
    }
    else {
        res *= num;
    }

    res.writeln;
}