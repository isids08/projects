package main

func UpdateRow(input []int, row_num int, input_Grid [][]int) (output [][]int) {
	for i := 0; i < 9; i++ {
		input_Grid[row_num][i] = input[i]
	}
	return input_Grid
}
