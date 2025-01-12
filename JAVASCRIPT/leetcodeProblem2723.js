var addTwoPromises = async function (promise1, promise2) {
  return new Promise(async (resolve) => {
    const resolveArray = await Promise.all([promise1, promise2]);
    resolve(resolveArray.reduce((acc, currVal) => acc + currVal, 0));
  });
};
