import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    int[string] rate;

    foreach (_; 0 .. N+M) {
        auto input = readln.chomp.split;
        rate[input[0]] = input[1].to!int;
    }

    auto user = rate.keys;
    user.sort;

    foreach (u; user) {
        writeln(u, " ", rate[u]);
    }
}