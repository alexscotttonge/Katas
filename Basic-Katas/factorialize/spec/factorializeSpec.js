describe('factorialize', () => {

  it('returns the factorial of a number', () => {
    expect(factorialize(5)).toEqual (120);
    expect(factorialize(0)).toEqual (1);
  });

});
