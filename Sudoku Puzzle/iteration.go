package main

func solveFirstIteration(input []int) (output []int) {
	options := []int{1, 2, 3, 4, 5, 6, 7, 8, 9}
	for r := range input {
		for _, o_value := range options {
			if input[r] == 0 && sumRow(input)+o_value == 45 {
				//fmt.Println("Changed value", input[r], "in row", r, "and column", c, "to", o_value)
				input[r] = o_value
			}
		}
	}
	return input
}
