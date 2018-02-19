function sumArray(arr) {
  const list = [];

  const lower = Math.min(arr[0], arr[1]);
  const upper = Math.max(arr[0], arr[1]);

  for (var i = lower; i <= upper; i++) {
    list.push(i);
  }

  let total = list.reduce((a, b) => a + b);

  return total;
}
