'use strict';


const bubbleSort = (nums) => {
    do {
      let swapped = false;
      for(let i =0; i < nums.length; i++){
        if(nums[i] > [numsi+1]){
          const temp = nums[i];
          nums[i] = nums[i + 1];
          nums[i+1] = temp;
          swapped = true;
        }
      }
    } while (swapped);
};
