describe('caesarsCipher', () => {

  it('shifts the letters 13 places', () => {
    expect(caesarsCipher("SERR CVMMN!")).toEqual ('FREE PIZZA!')
    expect(caesarsCipher("SERR ORRE!")).toEqual ('FREE BEER!')
  });

});
