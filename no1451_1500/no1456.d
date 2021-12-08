import std;

void main() {
    int N, K;
    readf("%d %d\n", N, K);

    auto A = readln.chomp.split.to!(int[]);

    auto B = A.cumulativeFold!"a ^ b".array;

    bool[int] list;
    list[0] = true;
    bool isOK;
    foreach (b; B) {
        if ((b ^ K) in list) {
            isOK = true;
            break;
        }

        list[b] = true;
    }

    writeln(isOK ? "Yes" : "No");
}