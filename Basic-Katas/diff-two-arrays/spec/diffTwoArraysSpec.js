describe('truncateString', () => {

  it('finds the unique elements from two arrays', () => {
    expect(diffTwoArrays([1, 2, 3, 5], [1, 2, 3, 4, 5])).toEqual ([4])
    expect(diffTwoArrays([1, "calf", 3, "piglet"], [1, "calf", 3, 4])).toEqual (["piglet", 4])
  });

});
