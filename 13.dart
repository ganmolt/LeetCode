class Solution {
  int romanToInt(String s) {
    Map<String, int> m = {
      'I': 1,
      'V': 5,
      'X': 10,
      'L': 50,
      'C': 100,
      'D': 500,
      'M': 1000
    };

    int ans = 0;
    for(var i = 0; i < s.length; i++) {
      if(i < s.length-1 && m[s[i]]! < m[s[i+1]]!) {
        ans -= m[s[i]]!;
      } else {
        ans += m[s[i]]!;
      }
    }

    return ans;
  }
}
