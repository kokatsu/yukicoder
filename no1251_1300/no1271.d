import std;

void main() {
    int k;
    readf("%d\n", k);

    real res = k == 0 ? PI * PI / 6.0 : 0.0;
    foreach (i; 1 .. k+1) {
        res += (1.0 / i) / k;
    }

    writefln("%.12f", res);
}