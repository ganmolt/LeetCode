class Solution {
  String longestCommonPrefix(List<String> strs) {
    String commonString = "";

    
    for(int i = 0; i < strs[0].length; i++){
      var c = strs[0][i];
      for(int k = 0; k < strs.length; k++){
        if(strs[k].length <= i || c != strs[k][i]) {
          return commonString;
        }
      }
      commonString += c;
    }
    return commonString;
  }
}
