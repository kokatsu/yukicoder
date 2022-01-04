import std;

void main() {
    long n, z;
    readf("%d %d\n", n, z);

    bool isOK;
    if (n == 1) {
        isOK = (z > 1);
    }
    else if (n == 2) {
        long r = z ^^ n;
        foreach (x; 1 .. z) {
            long a = x ^^ n;
            long b = r - a;

            long y = b.to!real.sqrt.floor.to!long;
            if (y * y == b) {
                isOK = true;
                break;
            }
        }
    }

    writeln(isOK ? "Yes" : "No");
}