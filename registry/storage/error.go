package storage

import "fmt"

// pushError formats an error type given a path and an error
// and pushes it to a slice of errors
func pushError(errors []error, path string, err error) []error {
	return append(errors, fmt.Errorf("%s: %s", path, err))
}

type FioDigestError struct{}

func (f FioDigestError) Error() string {
	return "FIO HACK DIGEST ERROR"
}
