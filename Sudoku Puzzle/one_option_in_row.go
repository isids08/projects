package main

import "fmt"

func one_row_option(input [][][]*Box, inputGrid [][]int) (output [][][]*Box, outputGrid [][]int) {
	var count_row int = 0
	//var count_col int = 0
	var j_index int = 0
	var value int = 0
	var count_col int = 0
	var i_index int = 0
	for k := 0; k < 9; k++ {
		for i := 0; i < 9; i++ {
			count_row = 0
			for j := 0; j < 9; j++ {
				if input[i][j][k].number != 0 {
					count_row = count_row + 1
					j_index = j
					value = k
				}
			}
			//fmt.Println("The count of ", k+1, " in row ", i, " is ", count_row)
			if count_row == 1 {
				//fmt.Println("changed ", inputGrid[i][j_index], " in row ", i, " column ", j_index, " to ", input[i][j_index][k].number)
				inputGrid[i][j_index] = input[i][j_index][value].number
				/*for p := 0; p < 9; p++ {
					input[i][j_index][p].number = 0
				}*/
			}
		}

		for a := 0; a < 9; a++ {
			count_col = 0
			for b := 0; b < 9; b++ {
				if input[b][a][k].number != 0 {
					count_col = count_col + 1
					i_index = b
				}
			}
			if count_col == 1 {
				if input[i_index][a][k].number != 0 {
					fmt.Println("changed ", inputGrid[i_index][a], " in row ", i_index, " column ", a, " to ", input[i_index][a][k].number)
					inputGrid[i_index][a] = input[i_index][a][k].number
					/*for p := 0; p < 9; p++ {
						input[i_index][a][p].number = 0
					}*/
				}
			}

		}
	}
	return input, inputGrid
}
