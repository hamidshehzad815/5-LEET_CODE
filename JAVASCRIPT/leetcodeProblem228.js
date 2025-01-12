var summaryRanges = function (nums) {
  let newRange = true;
  let start = 0;
  let end = 0;
  const ranges = [];
  nums.forEach((value, index) => {
    if (newRange) {
      start = value;
      newRange = false;
    }
    if (value + 1 !== nums[index + 1]) {
      newRange = true;
      end = value;
      const range = start === end ? `${start}` : `${start}->${end}`;
      ranges.push(range);
    }
  });
  return ranges;
};

console.log(summaryRanges([0, 2, 3, 4, 6, 8, 9]));
