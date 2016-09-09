'use strict';

const mergeSort = (nums) => {
  if (nums.length < 2){
    return nums;
  }

  const length = nums.length;
  const middle = Math.floor(length / 2);
  const left = nums.slice(0, middle);
  const right = nums.slice(middle, length);

  const sortedLeft = mergeSort(left);
  const sortedRight = mergeSort(right);

  return stitch(sortedLeft, sortedRight);
};




const stitch = (left, right) => {
  const results = [];

  while (left.length && right.length){
    if(left[0] <= right[0]){
      results.push(left.shift());
    } else {
      results.push(right.shift());
    }
  }

  while (left.length){
    results.push(left.shift());
  }

  while (right.length){
    results.push(right.shift());
  }
  return results;
};


console.log(mergeSort([4,2,3,5,7,6,1,9,8,10]));
