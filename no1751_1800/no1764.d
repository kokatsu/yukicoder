import std;

void main() {
    int K;
    readf("%d\n", K);

    int M = 4;

    auto queue = new dchar[][](4);
    queue[0] ~= 'A', queue[0] ~= 'E';
    queue[1] ~= 'B';
    queue[2] ~= 'C';
    queue[3] ~= 'D';

    foreach (i; 0 .. K) {
        dchar f = queue[i%M].front;
        queue[i%M].popFront;

        queue[(i+1)%M] ~= f;
    }

    foreach (q; queue) {
        q.writeln;
    }
}