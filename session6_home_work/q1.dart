
void main(){
Solution solution = Solution();
List<int> nums = [5, 3, 5, 7, 3, 9];
int target = 10;
List<int> result = solution.twoSum(nums, target);
print(result);
}


class Solution {
  List<int> twoSum(List<int> nums, int target) {
    for (int i = 0; i < nums.length; i++) {
      for (int j = i + 1; j < nums.length; j++) {
        if (nums[i] + nums[j] == target) {
          return [i, j];
        }
      }
    }
    return [];
  }
}
