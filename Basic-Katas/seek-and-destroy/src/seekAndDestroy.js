function seekAndDestroy(arr) {
  var args = Array.prototype.slice.call(arguments);
  console.log(args)
  for (var i = 0; i < arr.length; i++) {
    for (var j = 0; j < args.length; j++) {
      if (arr[i] === args[j]) {
        delete arr[i];
      }
    }
  }
  console.log(arr)
  return arr.filter(Boolean);
}
