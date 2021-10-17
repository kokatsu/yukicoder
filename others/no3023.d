import std;

void main() {
    int N;
    readf("%d\n", N);

    int zero = false.to!int;
    int one = true.to!int;
    int two = [one, one].sum;

    bool isYes = (N != one);

    if (N % two == zero && N != two) {
        isYes = false;
    }

    int d = [one, two].sum;
    while (d ^^ two <= N) {
        if (N % d == zero) {
            isYes = false;
            break;
        }
        d = [d, two].sum;
    }

    if (isYes) {
        writeln("YES");
    }
    else {
        writeln("NO");
    }
}