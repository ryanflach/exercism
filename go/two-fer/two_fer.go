// Package twofer implements a simple function for returning a dynamic string
// of the phrase "One for x, one for me."
package twofer

import "fmt"

// ShareWith returns a string of the phrase "One for x, one for me.", where x is
// the argument (p) concatenated in for x. If an empty string is provided as an
// argument, "you" will be interpolated for x.
func ShareWith(p string) string {
	o := "One for %v, one for me."

	if p == "" {
		return fmt.Sprintf(o, "you")
	}

	return fmt.Sprintf(o, p)
}
