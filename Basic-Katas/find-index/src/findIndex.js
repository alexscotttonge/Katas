function findIndex(arr, num) {
  arr.sort(function(a, b) {
    return a - b;
  });

  let i = 0;
  while (num > arr[i]) {
    i++;
  }
  return i;
}
