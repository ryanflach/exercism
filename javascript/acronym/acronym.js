const hasAcronym = (input) => input.includes(':');
const existingAcronym = (input) => input.split(':')[0];
const generatedAcronym = (input) => {
  const rawInitials = input.match(/[A-Z](?=[a-z])|(\b\w)/g);
  return rawInitials.join('').toUpperCase();
};

module.exports = {
  parse: (input) => {
    if (hasAcronym(input)) {
      return existingAcronym(input);
    } else {
      return generatedAcronym(input);
    }
  }
};
