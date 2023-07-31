package main

func only_one_in_box(input [][][]*Box, inputGrid [][]int, row int, col int) (output [][][]*Box, outputGrid [][]int) {
	//for b := 0; b < 9; b++ {
	//for a := 0; a < b+3; a++ {
	//var store int = 0
	var count int = 0
	for k := 0; k < 9; k++ {
		count = 0
		for i := row; i < row+3; i++ {
			for j := col; j < col+3; j++ {
				if input[i][j][k].number != 0 {
					count = count + 1
				}

			}
		}
		if count == 1 {
			for x := row; x < row+3; x++ {
				for y := col; y < col+3; y++ {
					if input[x][y][k].number != 0 {
						//fmt.Println("changed ", inputGrid[x][y], " in row ", x, " column ", y, " to ", input[x][y][k].number)
						inputGrid[x][y] = input[x][y][k].number
						//input[x][y][k].number = 0
						for k := 0; k < 9; k++ {
							input[x][y][k].number = 0
						}
					}
				}
			}
		}
	}
	/*for i := row; i < row+3; i++ {
		for j := col; j < col+3; j++ {
			for k := 0; k < 9; k++ {
				store = input[i][j][k].number
				count = 0
				if store != 0 {
					for x := row; x < row+3; x++ {
						for y := col; y < col+3; y++ {
							for z := 0; z < 9; z++ {
								if input[x][y][k].number == store && x != i && y != j && z != k {
									count = count + 1
								}
							}

						}
					}
				}

				if count == 0 {
					for a := 0; a < row+3; a++ {
						for b := 0; b < col+3; b++ {
							for c := 0; c < 9; c++ {
								if input[a][b][c].number == store {
									inputGrid[a][b] = input[a][b][c].number
								}
							}
						}
					}
				}
			}
		}
	}*/

	return input, inputGrid
}
