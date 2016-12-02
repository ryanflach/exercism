const minInHour = 60;
const hourInDay = 24;

class Clock {
  constructor(hour, min) {
    if (min < 0) {
      hour -= Math.ceil(-min / minInHour);
      min += minInHour;
    }

    if (min >= minInHour) {
      hour += Math.floor(min / minInHour);
    }

    this.hour = hour;
    this.min = min;
  }

  toString() {
    const formattedHours = formatTime(this.hour, hourInDay);
    const formattedMinutes = formatTime(this.min, minInHour);
    return `${formattedHours}:${formattedMinutes}`;
  }

  equals(clock) {
    return this.toString() === clock.toString();
  }
}

const at = (hour, min = 0) => {
  return new Clock(hour, min);
}

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
