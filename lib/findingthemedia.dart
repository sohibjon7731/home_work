  /*Given two sorted arrays nums1 and nums2 of size m and n respectively, return the median of the two sorted arrays.

The overall run time complexity should be O(log (m+n)).

 

Example 1:

Input: nums1 = [1,3], nums2 = [2]
Output: 2.00000
Explanation: merged array = [1,2,3] and median is 2.
Example 2:

Input: nums1 = [1,2], nums2 = [3,4]
Output: 2.50000
Explanation: merged array = [1,2,3,4] and median is (2 + 3) / 2 = 2.5.
 

Constraints:

nums1.length == m
nums2.length == n
0 <= m <= 1000
0 <= n <= 1000
1 <= m + n <= 2000
-106 <= nums1[i], nums2[i] <= 106
*/
  
  double findMedianSortedArrays(List<int> list1, List<int> list2) {
  int list1Index = 0;
  int list2Index = 0;
  List mergedList = [];
  while (list1Index < list1.length && list2Index < list2.length) {
    if (list1[list1Index] < list2[list2Index]) {
      mergedList.add(list1[list1Index]);
      list1Index++;
    } else {
      mergedList.add(list2[list2Index]);
      list2Index++;
    }
  }
  while (list1Index < list1.length) {
    mergedList.add(list1[list1Index]);
    list1Index++;
  }
  while (list2Index < list2.length) {
    mergedList.add(list2[list2Index]);
    list2Index++;
  }

  int medianIndex = (mergedList.length - 1) ~/ 2;
  if (mergedList.length % 2 == 0) {
    return double.parse(((mergedList[medianIndex] + mergedList[medianIndex + 1]) / 2).toString());
  } else {
    return double.parse(mergedList[medianIndex].toString());
  }

}