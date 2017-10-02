// Package leap implements a simple library for returning whether or not a given
// year is a leap year (divisble by 4 but not 100, unless also divisble by 400).
package leap

import "math"

const testVersion = 3

// IsLeapYear evaluates a given int, y, and returns a boolean for whether or not
// it is a leap year.
func IsLeapYear(y int) bool {
	if divisibleBy(y, 400) {
		return true
	}

	if divisibleBy(y, 100) {
		return false
	}

	if divisibleBy(y, 4) {
		return true
	}

	return false
}

func divisibleBy(i int, d int) bool {
	return math.Mod(float64(i), float64(d)) == 0
}
