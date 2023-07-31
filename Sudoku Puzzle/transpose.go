package main

func transposeGrid(input [][]int) (output [][]int) {
	result := make([][]int, 9)
	for i := 0; i < 9; i++ {
		result[i] = make([]int, 9)
		for j := 0; j < 9; j++ {
			result[i][j] = input[j][i]
		}
	}
	return result
}
