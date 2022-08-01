import std;

void main() {
    int H, N;
    readf("%d %d\n", H, N);

    auto T = new int[](N-1);
    foreach (i; 0 .. N-1) readf("%d\n", T[i]);

    auto S = T.sort;

    auto ub = S.upperBound(H);
    int res = ub.length.to!int + 1;

    string ord = "th";
    if (res % 10 == 1) ord = "st";
    if (res % 10 == 2) ord = "nd";
    if (res % 10 == 3) ord = "rd";

    writeln(res, ord);
}