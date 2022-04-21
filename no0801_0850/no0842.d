import std;

void main() {
    auto A = readln.chomp.split.to!(int[]);

    int G = A.back;
    A.popBack;

    int[] B = [500, 100, 50, 10, 5, 1];

    foreach (a, b; zip(A, B)) {
        int d = min(a, G/b);
        G -= b * d;
    }

    writeln(G == 0 ? "YES" : "NO");
}