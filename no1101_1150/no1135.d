import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split;

    int idx = -1;
    auto B = new int[](N);
    foreach (a; A) {
        if (a == "+") {
            B[idx-1] += B[idx];
            B[idx--] = 0;
        }
        else if (a == "-") {
            B[idx-1] -= B[idx];
            B[idx--] = 0;
        }
        else {
            B[++idx] = a.to!int;
        }
    }

    B[0].writeln;
}