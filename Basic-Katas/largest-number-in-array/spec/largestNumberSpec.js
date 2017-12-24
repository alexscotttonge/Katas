describe('largestNumber', () => {

  it('returns the largest number from an array', () => {
    expect(largestNumber([[1,44,3],[4,5,3,9]])).toEqual ([44,9]);
    expect(largestNumber([[1,44,3],[4,5,3,9],[6,55,4],[5555,8,123456]])).toEqual ([44,9,55,123456]);
  });

});
