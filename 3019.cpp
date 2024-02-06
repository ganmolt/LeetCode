class Solution {
public:
  int countKeyChanges(string s) {
    string con = "";
    for(auto r: s) {
      if ('A' <= r && r <= 'Z') {
        con += r - 'A' + 'a';
      } else {
        con += r;
      }
    }

    int cnt = 0;
    for(int i = 0; i < con.size()-1; i++){
      if (con[i] == con[i+1]) continue;
      cnt++;
    }
    return cnt;
  }
};
