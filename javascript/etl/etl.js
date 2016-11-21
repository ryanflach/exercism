class ETL {
  transform(old_code) {
    let new_code = {};
    const old_point_values = Object.keys(old_code)
    for (let i = 0; i < old_point_values.length; i++) {
      for (let n = 0; n < old_code[old_point_values[i]].length; n++) {
        let letter = old_code[old_point_values[i]][n].toLowerCase();
        let point_value = parseInt(old_point_values[i])
        new_code[letter] = point_value
      }
    }
    return new_code;
  }
}

module.exports = ETL;
