function matchString(arr) {
  const test = arr[1].toLowerCase();
  const target = arr[0].toLowerCase();
  for(i = 0; i < test.length; i++) {
    if(target.indexOf(test[i]) === -1)
      return false;
  }
  return true;
}
