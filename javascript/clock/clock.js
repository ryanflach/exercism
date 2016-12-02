const minInHour = 60;
const hourInDay = 24;

class Clock {
  constructor(hour, min) {
    this.hour = hour;
    this.min = min;
  }

  toString() {
    this.processOverUnder();
    const formattedHours = formatTime(this.hour, hourInDay);
    const formattedMinutes = formatTime(this.min, minInHour);
    return `${formattedHours}:${formattedMinutes}`;
  }

  equals(clock) {
    return this.toString() === clock.toString();
  }

  plus(min) {
    this.min += min;
    return this;
  }

  minus(min) {
    this.min -= min;
    return this;
  }

  processOverUnder() {
    if (this.min < 0) {
      this.hour -= Math.ceil(-this.min / minInHour);
      this.min += minInHour;
    }

    if (this.min >= minInHour) {
      this.hour += Math.floor(this.min / minInHour);
    }
  }
}

const at = (hour, min = 0) => {
  return new Clock(hour, min);
};

const formatTime = (input, qualifier) => {
  if (input < 0) {
    return formatTime(qualifier + input, qualifier);
  }

  if (input >= qualifier) {
    const converted = input % qualifier;
    return `${formatTime(converted, qualifier)}`;
  } else if (input < 10) {
    return `0${input}`;
  } else {
    return input;
  }
};

module.exports.at = at;
