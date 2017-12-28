describe('truncateString', () => {

  it('truncates a string if longer than max length', () => {
    expect(truncateString("Gardening amongst begonias", 14)).toEqual ('Gardening a...')
    expect(truncateString("Marvellous marmalade", 2)).toEqual ('Ma...')
  });

});
