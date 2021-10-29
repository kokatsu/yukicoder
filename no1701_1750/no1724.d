import std;

struct Cosmetic {
    long num;
    long a;
    long b;
}

void main() {
    int N, K;
    readf("%d %d\n", N, K);

    auto A = readln.chomp.split.to!(long[]);
    auto B = readln.chomp.split.to!(long[]);

    auto C = new Cosmetic[](N);
    foreach (i; 0 .. N) {
        C[i] = Cosmetic(i, A[i], B[i]);
    }

    C.sort!"a.a - a.b > b.a - b.b";

    auto S = new dchar[](N);
    foreach (i; 0 .. N) {
        if (i < K) {
            S[C[i].num] = 'A';
        }
        else {
            S[C[i].num] = 'B';
        }
    }

    S.writeln;
}