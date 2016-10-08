var Gigasecond = function(startingDate){
  this.startingDate = startingDate;
};

Gigasecond.prototype.date = function() {
  var startingTime = this.startingDate.getTime();
  var endingTime = startingTime + 1000000000 * 1000;
  return new Date(endingTime);
};

module.exports = Gigasecond;
