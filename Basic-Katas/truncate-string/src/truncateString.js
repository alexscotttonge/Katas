function truncateString(string, num) {

  const truncate = num - 3;
  const truncString = string.slice(0, truncate) + '...';
  if (string.length > num && num > 3) {
    return truncString;
  }
  else if (string.length > num && num <= 3) {
   return string.slice(0,num) + '...';
  }
  else {
   return string;
  }
}
