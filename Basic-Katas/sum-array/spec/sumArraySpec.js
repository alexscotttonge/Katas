describe('sumArray', () => {
  it('returns the sum of the two passed numbers and all those in between', () => {
    expect(sumArray([1,4])).toEqual (10);
    expect(sumArray([10,5])).toEqual (45);
  });
});
