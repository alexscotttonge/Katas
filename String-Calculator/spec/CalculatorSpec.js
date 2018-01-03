describe ('Calculator', () => {

  it ('returns zero for an empty string', () => {
    expect(calculator('')).toEqual (0);
  });

  it ('returns the number value for a single number', () => {
    expect(calculator('6')).toEqual (6);
  });

  it ('returns sum of two numbers', () => {
    expect(calculator('6,3')).toEqual (9);
  });

  it ('handles new lines between numbers', () => {
    expect(calculator("1\n2,3")).toEqual (6);
  });

  it ('handles multiple lines between numbers', () => {
    expect(calculator("1\n2\n3\n7,5")).toEqual (18);
  });

  it ('throws an error for negative numbers', () => {
    expect( () => {
      calculator('-5')}).toThrow(new Error("Number can't be negative"));
  });

});
