package main

import "fmt"

func two_and_rest(input [][][]*Box, inputGrid [][]int, row int, col int) (output [][][]*Box, outputGrid [][]int) {
	possible_values := make([]int, 0)

	for i := row; i < row+3; i++ {
		for j := col; j < col+2; j++ {
			if rest(inputGrid, row, col) == true {
				for k := 0; k < 9; k++ {
					if input[i][j][k].number != 0 {
						possible_values = append(possible_values, input[i][j][k].number)
					}
				}
				for x := row; x < row+3; x++ {
					for y := col; y < col+3; y++ {
						for z := 0; z < 9; z++ {
							for _, a := range possible_values {
								if a == input[x][y][z].number && y != j && y != j+1 && x != i {
									fmt.Println("changed ", input[x][y][z].number, " to 0")
									input[x][y][z].number = 0

								}
							}
						}
					}
				}

			}
		}

	}
	return input, inputGrid
}
