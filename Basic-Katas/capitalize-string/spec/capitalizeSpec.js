describe('capitalize', () => {

  it('capitalizes each word in a string', () => {
    expect(capitalize('aLL tHe PreTTY horSES')).toEqual ('All The Pretty Horses');
    expect(capitalize('tiny goat feet')).toEqual ('Tiny Goat Feet');
  });

});
