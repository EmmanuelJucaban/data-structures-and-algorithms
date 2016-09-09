'use strict'
const quickSort = (nums) => {
  if (nums.length <= 1) return nums;

  const pivot = nums[nums.length-1];
  const left = [];
  const right = [];

    // Cause we dont wanna go to the end
  for(let i = 0; i < nums.length-1; i++ ){
    if (nums[i] < pivot){
      left.push(nums[i]);
    } else {
      right.push(nums[i]);
    }
  }

  return [...quickSort(left), pivot, ...quickSort(right)];
};



var arr = [1,4,15,3,5,12,13,8];


console.log(quickSort(arr));
