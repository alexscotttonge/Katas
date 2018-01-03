function calculator(numString) {

  if (numString === '') return 0;

  const numbers = numString
    .replace(/\r?\n/g, ',')
    .split(',')
    .map(n => parseInt(n))

  if (numbers.some(n => n < 0)) throw new Error("Number can't be negative")

    return numbers.reduce((acc, curr) => {
      return acc + curr
    });
}
