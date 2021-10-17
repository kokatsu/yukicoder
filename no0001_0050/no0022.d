import std;

void main() {
    int N, K;
    readf("%d %d\n", N, K);

    string S = readln.chomp;

    auto bracket = new int[](N+1);
    foreach (i, s; S) {
        bracket[i+1] = bracket[i];
        if (s == '(') {
            ++bracket[i+1];
        }
        else {
            --bracket[i+1];
        }
    }

    if (S[K-1] == '(') {
        foreach (i; K .. N+1) {
            if (bracket[i] == bracket[K-1]) {
                writeln(i);
                break;
            }
        }
    }
    else {
        foreach_reverse (i; 0 .. K) {
            if (bracket[i] == bracket[K]) {
                writeln(i+1);
                break;
            }
        }
    }
}