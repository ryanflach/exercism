class SpaceAge {
  constructor(seconds) {
    this.seconds = seconds;
    this.secondsPerEarthYear = 31557600;
  }

  onEarth() {
    return this.yearsOnPlanet(1);
  }

  onMercury() {
    return this.yearsOnPlanet(0.2408476);
  }

  onVenus(){
    return this.yearsOnPlanet(0.61519726);
  }

  onMars() {
    return this.yearsOnPlanet(1.8808158);
  }

  onJupiter() {
    return this.yearsOnPlanet(11.862615);
  }

  onSaturn() {
    return this.yearsOnPlanet(29.447498);
  }

  onUranus() {
    return this.yearsOnPlanet(84.016846);
  }

  onNeptune() {
    return this.yearsOnPlanet(164.79132);
  }

  yearsOnPlanet(orbitalModifier) {
    const years = this.seconds /
                  this.secondsPerEarthYear /
                  orbitalModifier;
    return this.toTwoDigitDecimal(years);
  }

  toTwoDigitDecimal(float) {
    return +float.toFixed(2);
  }

}

module.exports = SpaceAge;
