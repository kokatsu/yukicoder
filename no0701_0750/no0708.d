import std;

void main() {
    string S = readln.chomp;

    void calc(ref int a, int b, dchar op) {
        if (op == '+') {
            a += b;
        }
        else {
            a -= b;
        }
    }

    dchar o = '+', p = '+';
    bool inBracket;
    int res, num;
    foreach (s; S) {
        if (inBracket) {
            if (s == ')') {
                calc(res, num, o);
                num = 0;
                p = '+';
                inBracket = false;
            }
            else if (s.isNumber) {
                calc(num, s-'0', p);
            }
            else {
                p = s;
            }
        }
        else {
            if (s == '(') {
                inBracket = true;
            }
            else if (s.isNumber) {
                calc(res, s-'0', o);
            }
            else {
                o = s;
            }
        }
    }

    res.writeln;
}