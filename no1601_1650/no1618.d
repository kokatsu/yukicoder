import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(long[]);
    auto B = readln.chomp.split.to!(long[]);

    auto X = A.cumulativeFold!"a + b".array;
    auto Y = B.cumulativeFold!"a + b".array;

    auto C = new long[](N*2); 

    auto S = new long[](N+1);
    auto T = new long[](N+1);
    foreach (i; 0 .. N) {
        S[i+1] = S[i] + X[i];
        T[i+1] = T[i] + Y[i];
        C[i+1] = S[i+1] + T[i+1];
    }

    auto U = new long[](N);
    auto V = new long[](N);
    U[0] = S[N];
    V[0] = T[N];
    foreach (i; 1 .. N) {
        U[i] = U[i-1] + X[N-1] - X[i-1] - N * A[i-1];
        V[i] = V[i-1] + Y[N-1] - Y[i-1] - N * B[i-1];
        C[N+i] = U[i] + V[i];
    }

    foreach (i, c; C) {
        if (i == N * 2 - 1) {
            writeln(c);
        }
        else {
            write(c, " ");
        }
    }
}