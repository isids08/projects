package main

func Remove_numbers_in_zero_slots(input [][][]*Box, inputGrid [][]int) (output [][][]*Box, outputGrid [][]int) {
	for i := 0; i < 9; i++ {
		for j := 0; j < 9; j++ {
			if inputGrid[i][j] != 0 {
				for k := 0; k < 9; k++ {
					input[i][j][k].number = 0
				}
			}
		}
	}
	return input, inputGrid
}
