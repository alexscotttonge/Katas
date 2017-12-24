function largestNumber(array) {
  return array.map((arrays) => {
    return arrays.reduce((previous, next) => {
      return (previous > next) ? previous : next
    });
  });
}
