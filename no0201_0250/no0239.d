import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = new string[][](N);
    foreach (i; 0 .. N) A[i] = readln.chomp.split;

    string S = "nyanpass";

    int[] list;
    foreach (i; 0 .. N) {
        bool isOK = true;
        foreach (j; 0 .. N) {
            if (i == j) continue;

            isOK &= (A[j][i] == S);
        }

        if (isOK) list ~= i + 1;
    }

    writeln(list.length == 1 ? list.front : -1);
}