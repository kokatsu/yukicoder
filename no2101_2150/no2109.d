import std;

void main() {
    int M, D, K;
    readf("%d %d %d\n", M, D, K);

    auto appear = new bool[](10);
    auto date = Date(2022, M, D);
    foreach (i; 0 .. 7) {
        auto m = date.month, d = date.day;
        foreach (_; 0 .. 2) {
            appear[m%10] = appear[d%10] = true;
            m /= 10, d /= 10;
        }

        date += 1.days;
    }

    bool isOK = (appear.count(true) >= K);
    writeln(isOK ? "Yes" : "No");
}