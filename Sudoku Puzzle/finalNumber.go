package main

import "fmt"

func replaceNumber(input [][][]*Box, inputGrid [][]int) (output [][][]*Box, outputGrid [][]int) {
	for i := 0; i < 9; i++ {
		for j := 0; j < 9; j++ {
			var sum int = 0
			var value int = 0
			for k := 0; k < 9; k++ {
				//fmt.Println(input[k].number)
				if input[i][j][k].number != 0 {
					sum = sum + 1
					value = k + 1
				}
			}
			if sum == 1 {
				//fmt.Println("row ", i, "column ", j, " has only one value")
				for k := 0; k < 9; k++ {
					if input[i][j][k].number != 0 {
						//fmt.Println(inputGrid[i][j], " is replaced by ", input[i][j][k].number)
						fmt.Println(inputGrid[i][j], " is replaced by ", value, " in row ", i, " column ", j)
						inputGrid[i][j] = value

						//input[i][j][k].number = 0
					}
				}
			}
		}
	}
	return input, inputGrid
}
