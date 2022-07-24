import std;

void main() {
    auto a = readln.chomp.split.to!(int[]);

    int res;
    foreach (x; a) {
        int num;

        if (x % 3 == 0) num += 4;
        if (x % 5 == 0) num += 4;

        if (num == 0) {
            int rem = x;
            while (rem > 0) {
                rem /= 10;
                ++num;
            }
        }

        res += num;
    }

    res.writeln;
}