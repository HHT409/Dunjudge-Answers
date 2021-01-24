#include <bits/stdc++.h>
#define int long long
using namespace std;

int count(string a, string b, int m, int n) {
    int arr[m + 1][n + 1] = {{0}};
    for (int i = 0; i <= n; ++i)
        arr[0][i] = 0;
    for (int i = 0; i <= m; ++i) {
        arr[i][0] = 1;
    }
    for (int i = 1; i <= m; i++) {
        for (int j = 1; j <= n; j++) {
            if (a[i - 1] == b[j - 1]) {
                arr[i][j] = arr[i - 1][j - 1] + arr[i - 1][j];
            } else {
                arr[i][j] = arr[i - 1][j];
            }
        }
    }

    return arr[m][n];
}

int32_t main() {
    int n;
    cin >> n;
    string str, lol = "LOL";
    cin >> str;
    cout << count(str, lol, str.size(), lol.size());
}
