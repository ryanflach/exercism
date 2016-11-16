class School {
  constructor() {
    this.students = {};
  }

  roster() {
    const grades = Object.keys(this.students);
    return grades.reduce((output, gradeLevel) => {
      output[gradeLevel] = this.grade(gradeLevel);
      return output;
    }, {});
  }

  add(student, gradeLevel) {
    if (this.students[gradeLevel]) {
      this.students[gradeLevel].push(student);
    } else {
      this.students[gradeLevel] = [student];
    }
  }

  grade(gradeLevel) {
    if (this.students[gradeLevel]) {
      return this.students[gradeLevel].sort();
    } else {
      return [];
    }
  }

}

module.exports = School;
