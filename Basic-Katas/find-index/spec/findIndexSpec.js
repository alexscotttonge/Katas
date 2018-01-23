describe('findIndex', () => {

  it('returns the index of the second param in the provided array', () => {
    expect(findIndex([20,3,5], 19)).toEqual (2);
    expect(findIndex([1,2,3,4], 1.5)).toEqual (1);
  })

});
