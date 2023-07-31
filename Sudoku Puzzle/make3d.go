package main

func create3D(x int) [][][]*Box {
	result := make([][][]*Box, x)
	for i := 0; i < x; i++ {
		result[i] = make([][]*Box, x)
		for j := 0; j < x; j++ {
			result[i][j] = make([]*Box, x)
			for k := 0; k < x; k++ {
				result[i][j][k] = new(Box)
				result[i][j][k].number = k + 1
			}
		}
	}
	return result
}
