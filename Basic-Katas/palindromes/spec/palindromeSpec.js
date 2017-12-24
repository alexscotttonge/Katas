describe('palindrome', () => {

  it('returns true for a palindrome', () => {
    expect(palindrome('Anne, I vote more cars race Rome to Vienna')).toBe (true);
    expect(palindrome('As I pee, sire, I see Pisa!')).toBe (false);
  })

});
