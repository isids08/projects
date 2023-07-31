package main

func eliminate(input [][][]*Box, inputGrid [][]int, row int, col int) (output [][][]*Box, outputGrid [][]int) {
	var count int
	index_i := make([]int, 0)
	index_j := make([]int, 0)
	var in_row int = row
	var in_col int = col
	for i := row; i < row+3; i++ {
		for j := col; j < col+3; j++ {
			for z := 0; z < 9; z++ {
				count = 0
				if input[i][j][z].number != 0 {
					value := input[i][j][z].number
					//fmt.Println(value)
					index_i = make([]int, 0)
					index_j = make([]int, 0)
					for x := row; x < row+3; x++ {
						for y := col; y < col+3; y++ {
							for k := 0; k < 9; k++ {
								//fmt.Println(input[x][y][k].number)
								if input[x][y][k].number == value {
									//fmt.Println(input[x][y][k].number)
									count++
									index_i = append(index_i, x)
									index_j = append(index_j, y)
								}

							}
						}

					}
					//fmt.Println(index_j)
					if same_values(index_i) == true {
						//fmt.Println("Same values in ", index_i)
						for s := 0; s < 9; s++ {
							if s != in_col && s != in_col+1 && s != in_col+2 {
								for t := 0; t < 9; t++ {
									if input[index_i[0]][s][t].number == value {
										input[index_i[0]][s][t].number = 0
										//fmt.Println("changed ", input[index_i[0]][s][t], " to 0")
									}
								}
							}

						}
					}
					if same_values(index_j) == true {
						for s := 0; s < 9; s++ {
							if s != in_row && s != in_row+1 && s != in_row+2 {
								for t := 0; t < 9; t++ {
									if input[s][index_j[0]][t].number == value {
										input[s][index_j[0]][t].number = 0
										//fmt.Println("changed ", input[index_i[0]][s][t].number, " to 0 in row ", s, " column ", index_j[0])
									}
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
