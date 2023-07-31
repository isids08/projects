package main

func removePossibilitiesfromBox(input [][][]*Box, inputGrid [][]int, row int, col int) (output [][][]*Box, outputGrid [][]int) {
	//for b := 0; b < 9; b++ {
	//for a := 0; a < b+3; a++ {
	for i := row; i < row+3; i++ {
		for j := col; j < col+3; j++ {
			//fmt.Println(i, j)
			if inputGrid[i][j] != 0 {
				value := inputGrid[i][j]
				//fmt.Println("The value of ", i, j, "is ", value)
				for x := row; x < row+3; x++ {
					for y := col; y < col+3; y++ {
						for k := 0; k < 9; k++ {
							//fmt.Println(input[x][y][k].number)
							if input[x][y][k].number == value {
								//fmt.Println(input[x][y][k].number)
								input[x][y][k].number = 0

							}
						}

						/*for k := 0; k < 9; k++ {
							for l := 0; l < 9; l++ {
								//fmt.Println(input[k][j][l].number)
								if input[k][j][].number == value {
									input[k][j][l].number = 0
								}
							}

						}*/
					}
				}
			}
		}
	}

	return input, inputGrid
}
