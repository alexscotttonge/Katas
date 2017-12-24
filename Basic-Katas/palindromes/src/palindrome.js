function palindrome(string) {
  return string.replace(/[\W_]/g, '').toLowerCase() ===
         string.replace(/[\W_]/g, '').toLowerCase().split('').reverse().join('');
}
