class Words {
  count(words) {
    const cleanString = words.replace(/\s+/, ' ').trim().toLowerCase();
    return cleanString.split(' ').reduce((counts, word) => {
      counts[word] = counts[word] + 1 || 1;
      return counts;
    }, Object.create(null));
  }
}

module.exports = Words;
