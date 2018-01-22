describe('seekAndDestroy', () => {

  it('removes matching array elements', () => {
    expect(seekAndDestroy([1, 2, 3, 5, 1, 2, 3], 2, 3)).toEqual ([1,5,1])
  });
});
