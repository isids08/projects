package main

import (
	"strconv"
)

func readasIntegers(input [][]string) (output [][]int) {
	/*sudokuGrid := make([][]int, len(input))
	for i, row := range input {
		sudokuGrid[i] = make([]int, len(input[i]))
		for j, value := range row {
			intValue, _ := strconv.Atoi(value)
			sudokuGrid[i][j] = intValue
		}
	}
	return sudokuGrid
	*/
	slice_of_slices := make([][]int, 9)

	for i := 0; i < 9; i++ {
		// looping through the slice to declare
		// slice of slice of length 3
		slice_of_slices[i] = make([]int, 9)
		// assigning values to each
		// slice of a slice
		for j := 0; j < 9; j++ {
			intValue, _ := strconv.Atoi(input[i][j])
			//fmt.Print(strconv.ParseInt(unsolved[i][j], 64, 8))
			slice_of_slices[i][j] = intValue
			//fmt.Print(intValue)
		}
	}
	//fmt.Println(slice_of_slices)
	return slice_of_slices
}
