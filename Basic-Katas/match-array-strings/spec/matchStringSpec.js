describe('matchString', () => {
  it('should return true if the two strings contain the same letters', () => {
    expect(matchString(["barmy", "armey"])).toEqual (false);
    expect(matchString(["ahgaoahaoihga", "igha"])).toEqual (true);
  });
});
