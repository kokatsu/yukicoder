import std;

void main() {
    long N, M;
    readf("%d %d\n", N, M);

    long pre, cur = 1;
    foreach (i; 3 .. N+1) {
        long tmp = pre;
        pre = cur;
        cur = (cur + tmp) % M;
    }

    cur.writeln;
}