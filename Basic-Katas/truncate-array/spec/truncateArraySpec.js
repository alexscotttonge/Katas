describe('truncateArray', () => {

  it('removes n elements after the head', () => {
    expect(truncateArray([1,2,3],2)).toEqual ([3]);
    expect(truncateArray(['too', 'many', 'chefs'],1)).toEqual (['many', 'chefs']);
  });

});
