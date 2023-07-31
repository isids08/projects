package main

func done(input [][][]*Box) (output bool) {
	var result int = 0
	for i := 0; i < 9; i++ {
		for j := 0; j < 9; j++ {
			for k := 0; k < 9; k++ {
				result = result + input[i][j][k].number
			}

		}
	}
	if result == 0 {
		return true
	}
	return false
}
