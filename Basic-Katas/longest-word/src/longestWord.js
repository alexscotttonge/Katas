function longestWord(string) {
  wordArray = string.split(' ');
  longWord = 0;
    for(i = 0; i < wordArray.length; i++) {
      if(wordArray[i].length > longWord) {
        longWord = wordArray[i].length;
      }
    }
  return longWord;
}
