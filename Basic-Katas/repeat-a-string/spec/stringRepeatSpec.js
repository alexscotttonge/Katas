describe('repeatString', () => {

  it('repeats a string n times', () => {
    expect(repeatString('redrum', 3)).toEqual ('redrumredrumredrum');
    expect(repeatString('wotcher', -42)).toEqual ('')
  });

});
