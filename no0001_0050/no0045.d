import std;

void main() {
    int N;
    readf("%d\n", N);

    auto V = readln.chomp.split.to!(int[]);

    auto dp = new int[][](N+1, 2);
    foreach (i, v; V) {
        dp[i+1][0] = dp[i].maxElement;
        dp[i+1][1] = dp[i][0] + v;
    }

    dp[N].maxElement.writeln;
}