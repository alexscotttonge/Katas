describe('longestWord', () => {

  it('returns the length of the longest word from a string', () => {
    expect(longestWord('massive monkeys love lucozade')).toEqual (8);
    expect(longestWord('lenient cricketers enjoy pace')).toEqual (10);
  })

});
