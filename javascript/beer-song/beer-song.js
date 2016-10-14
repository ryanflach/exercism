var BeerSong = function(){};

const bottlesOnWall = ' bottles of beer on the wall';
const bottles = ' bottles of beer.\n';
const bottleOnWall = ' bottle of beer on the wall';
const bottle = ' bottle of beer.\n';
const takeDown = 'Take one down and pass it around, ';

BeerSong.prototype.verse = function(verseNum){
  const pluralCurrentWall = verseNum + bottlesOnWall + ', ' + verseNum + bottles;
  const pluralUpdatedWall = takeDown + (verseNum - 1) + bottlesOnWall + '.\n';
  const newlySingleUpdatedWall = takeDown + (verseNum - 1) + bottleOnWall + '.\n';
  const singularCurrentWall = verseNum + bottleOnWall + ', ' + verseNum + bottle;
  const singularUpdatedWall =
    'Take it down and pass it around, no more bottles of beer on the wall.\n';

  if (verseNum > 2) {
    return pluralCurrentWall + pluralUpdatedWall;
  } else if (verseNum === 2) {
    return pluralCurrentWall + newlySingleUpdatedWall;
  } else if (verseNum === 1){
    return singularCurrentWall + singularUpdatedWall;
  } else {
    return 'No more' + bottlesOnWall + ', no more' + bottles +
      'Go to the store and buy some more, 99' + bottlesOnWall + '.\n';
  }
};

BeerSong.prototype.sing = function(startVerse, endVerse = 0) {
  let verses = "";
  for (var i = startVerse; i >= endVerse; i-- ) {
    verses += this.verse(i);
    if (i !== endVerse) {
      verses += '\n';
    }
  }
  return verses;
};

module.exports = BeerSong;
