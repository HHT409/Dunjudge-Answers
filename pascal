#include <bits/stdc++.h>
#define int long long
using namespace std;

vector <int> pascal_row(int row) {
    vector <int> currow;
    currow.push_back(1);
    if (row == 0) {
        return currow;
    }
    vector <int> prev = pascal_row(row - 1);

    for(int i = 1; i < prev.size(); i++) {
        int curr = prev[i - 1] + prev[i];
        currow.push_back(curr);
    }
    currow.push_back(1);
    return currow;
}

int32_t main() {
    int n, m;
    cin >> n >> m;
    vector <int> v = pascal_row(n - 1);
    cout << v[m - 1];
}
