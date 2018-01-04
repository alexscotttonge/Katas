'use strict'

function chunkArray(arr, chunks) {
  const newArray = [];
  while(arr.length > 0) {
    newArray.push(arr.splice(0,chunks))
  }
  return newArray;
}
