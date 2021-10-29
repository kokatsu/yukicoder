import std;

void main() {
    long X, A, Y, B;
    readf("%d %d %d %d\n", X, A, Y, B);

    void f(ref long[long] list, long num, long cnt) {
        long d = 2;

        while (d * d <= num) {
            if (num % d == 0) {
                list[d] += cnt;
                num /= d;
            }
            else {
                ++d;
            }
        }

        if (num > 1) {
            list[num] += cnt;
        }
    }

    long[long] list1, list2;
    f(list1, X, A);
    f(list2, Y, B);

    bool isOK = true;
    foreach (key, value; list2) {
        if (!(key in list1) || list1[key] < value) {
            isOK = false;
        }
    }

    if (isOK) {
        writeln("Yes");
    }
    else {
        writeln("No");
    }
}