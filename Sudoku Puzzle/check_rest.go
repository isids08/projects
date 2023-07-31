package main

func rest(input [][]int, row int, col int) (output bool) {
	for j := 0; j < 9; j++ {
		if col != j && col != j+1 && input[row][j] == 0 {
			return false
		}
	}
	return true
}
