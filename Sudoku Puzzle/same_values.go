package main

func same_values(input []int) (output bool) {
	first := input[0]
	for _, y := range input {
		if y != first {
			return false
		}
	}
	return true
}
