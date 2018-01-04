describe('chunkArray', () => {

  it('chunks an array into lengths n', () => {
    expect(chunkArray([1,2,3,4],2)).toEqual ([[1,2],[3,4]])
    expect(chunkArray([1,2,3,4,5,6,7,8,9],3)).toEqual ([[1,2,3],[4,5,6],[7,8,9]])
  })

});
