package main

func BoxremovePossibilities(input [][][]*Box, inputGrid [][]int) (output [][][]*Box, outputGrid [][]int) {
	value := 0
	for i := 0; i < 9; i = i + 3 {
		for j := i; j < i+3; j++ {
			value = inputGrid[i][j]
			if inputGrid[i][j] != 0 {
				value = inputGrid[i][j]
				//fmt.Println(value)
				for k := 0; k < 9; k++ {
					for l := 0; l < 9; l++ {
						if input[i][k][l].number == value {
							input[i][k][l].number = 0
						}
					}

				}

				for k := 0; k < 9; k++ {
					for l := 0; l < 9; l++ {
						//fmt.Println(input[k][j][l].number)
						if input[k][j][l].number == value {
							input[k][j][l].number = 0
						}
					}

				}
			}
		}
	}
	return input, inputGrid
}
