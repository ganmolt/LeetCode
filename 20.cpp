class Solution {
public:
  bool isValid(string s) {
    stack<char> stk;
    for(auto c:s) {
      switch(c) {
        char z;
        case ')':
          if(stk.empty()) return false;
          z = stk.top();
          stk.pop();
          if(z == '(') continue;
          return false;
        break;

        case '}':
          if(stk.empty()) return false;
          z = stk.top();
          stk.pop();
          if(z == '{') continue;
          return false;
        break;

        case ']':
          if(stk.empty()) return false;
          z = stk.top();
          stk.pop();
          if(z == '[') continue;
          return false;
        break;
        default:
          stk.push(c);
      }
    }
    if (stk.empty()) return true;
    return false;
  }
};
