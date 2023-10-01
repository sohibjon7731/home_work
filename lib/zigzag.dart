  /*The string "PAYPALISHIRING" is written in a zigzag pattern on a given number of rows like this: (you may want to display this pattern in a fixed font for better legibility)

P   A   H   N
A P L S I I G
Y   I   R
And then read line by line: "PAHNAPLSIIGYIR"

Write the code that will take a string and make this conversion given a number of rows:

string convert(string s, int numRows);
 

Example 1:

Input: s = "PAYPALISHIRING", numRows = 3
Output: "PAHNAPLSIIGYIR"
Example 2:

Input: s = "PAYPALISHIRING", numRows = 4
Output: "PINALSIGYAHRPI"
Explanation:
P     I    N
A   L S  I G
Y A   H R
P     I
Example 3:

Input: s = "A", numRows = 1
Output: "A"*/

  String convert(String s, int numRows) {
    if (numRows < 2) return s;
    final List<String> res = [];
    final int shift = numRows * 2 - 2;
    final int mid = shift ~/ 2;
    for (int i = 0; i < numRows; i++) {
      for (int j = 0; j < s.length; j += shift) {
        final int ind = i + j;
        if (ind >= s.length) break;
        res.add(s[ind]);
        if (i % mid == 0) continue;
        final int shiftInd = ind + 2 * (mid - i);
        if (shiftInd <= ind) continue;
        if (shiftInd >= s.length) break;
        res.add(s[shiftInd]);
      }
    }
    return res.join('');
  }