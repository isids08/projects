package main

func removePossibilitiesfromRow(input [][][]*Box, inputGrid [][]int) (output [][][]*Box, outputGrid [][]int) {
	for i := 0; i < 9; i++ {
		for j := 0; j < 9; j++ {
			if inputGrid[i][j] != 0 {
				value := inputGrid[i][j]
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
