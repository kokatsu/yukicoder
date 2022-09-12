import std;

void main() {
    auto A = readln.chomp.split('.').to!(int[]);
    auto B = readln.chomp.split('.').to!(int[]);

    bool isFossil = true;
    foreach (a, b; zip(A, B)) {
        if (a == b) continue;

        isFossil = (a >= b);
        break;
    }

    writeln(isFossil ? "YES" : "NO");
}