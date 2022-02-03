import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = new long[](N);
    foreach (i; 0 .. N) {
        auto input = readln.chomp.split.to!(long[]);

        if (input.length == 1) {
            A[i] = input[0];
        }
        else {
            writeln("\"assert\"");
            return;
        }
    }

    long[long] list;
    foreach (i; 0 .. N-1) {
        foreach (j; i+1 .. N) {
            ++list[A[i]+A[j]];
        }
    }

    auto nums = list.byKey.array;
    nums.sort!"a > b";

    nums[1].writeln;
}