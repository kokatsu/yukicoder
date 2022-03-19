import std;

void main() {
    int N, K;
    readf("%d %d\n", N, K);

    auto S = readln.chomp.to!(dchar[]);

    --K;

    auto T = S[0..K];
    if ((N - K) % 2 == 1) T.reverse;

    auto res = S[K..$] ~ T;
    res.writeln;
}