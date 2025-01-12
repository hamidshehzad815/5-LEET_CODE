var getRow = function (rowIndex) {
  let answer = [1, 1];
  let temp;
  if (rowIndex === 0) return [answer[0]];
  if (rowIndex === 1) return answer;
  for (let i = 0; i < rowIndex - 1; i++) {
    temp = [];
    for (let j = 0; j < answer.length; j++) {
      if (j === 0) {
        temp.push(1);
        continue;
      } else {
        temp.push(answer[j] + answer[j - 1]);
      }
    }
    temp.push(1);
    answer = [].concat(temp);
  }

  return answer;
};

console.log(getRow(4));
