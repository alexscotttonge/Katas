describe('stringEnding', () => {

  it('returns a boolean when comparing the ending of two strings', () => {
    expect(stringEnding('Mr Bean', 'ean')).toEqual (true);
    expect(stringEnding('Always boring cheese', 'eeese')).toEqual (false);
  });

});
