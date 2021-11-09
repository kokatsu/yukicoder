import std;

void main() {
    string X = readln.chomp;

    bool afterDecimalPoint;
    long num, den = 1;
    foreach (x; X) {
        if (x == '.') {
            afterDecimalPoint = true;
        }
        else {
            num = num * 10 + (x - '0');
            if (afterDecimalPoint) {
                den *= 10;
            }
        }
    }

    long g = gcd(num, den);
    if (g > 0) {
        num /= g, den /= g;
    }

    writeln(num, "/", den);
}