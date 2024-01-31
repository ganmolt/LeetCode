class Solution {
public:
  bool isPalindrome(int x) {
    string s = to_string(x);

    bool ok = true;
    for(int i = 0; i < s.size() / 2; i++){
      if(s[i] != s[s.size()-i-1]) ok = false;
    }
    return ok;
  }
};
