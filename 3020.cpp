class Solution {
public:
  int maximumLength(vector<int>& nums) {
    map<long long int, int> m;
    for(auto r: nums) {
      m[r]++;
    }

    int ans = 0;

    for(auto [key, val]: m){
      int cnt = 0;
      if (key == 1) {
        cnt = val;
        m[key] = 0;
      }

      long long int k = key;
      while (m[k] > 0) {
        int v = m[k]; m[k] = 0;
        cnt += 2;
        if (v == 1) break;
        k = k * k;
      }

      if (cnt%2 == 0) cnt--;

      ans = max(ans, cnt);
    }

    return ans;
  }
};
