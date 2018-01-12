describe('removeFalsies', () => {

  it('removes falsy values from an array', () => {
    expect(removeFalsies([false, 0, "wotcher", undefined])).toEqual (["wotcher"]);
    expect(removeFalsies([NaN, "", 99, "flake", null])).toEqual ([99, "flake"]);
  });

});
