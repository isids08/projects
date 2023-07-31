package main

import (
	"encoding/csv"
	"example/boxes"
	"fmt"
	"os"
)

func sum(array []int) int {
	result := 0
	for _, v := range array {
		result = result + v
	}
	return result
}

type Box struct {
	number int
}

func main() {
	// open CSV file
	fd, error := os.Open("data.csv")
	if error != nil {
		fmt.Println(error)
	}
	fmt.Println("Successfully opened the CSV file")
	defer fd.Close()

	// read CSV file
	fileReader := csv.NewReader(fd)
	unsolved, error := fileReader.ReadAll()
	if error != nil {
		fmt.Println(error)
	}
	var intGrid = readasIntegers(unsolved)
	//View_grid(intGrid)
	fmt.Println()
	transposed_Grid := transposeGrid(intGrid)
	//View_grid(intGrid)
	//	var boxes_Grid [][]int
	var numbers_3D_grid = create3D(9)
	counter := 0
	for done(numbers_3D_grid) == false {
		counter += 1
		fmt.Println(counter)

		for i := 0; i < 9; i++ {
			for check := 0; check < 2; check++ {
				only_one_zero_in_row := boxes.CheckRowsforZeros(intGrid[i])
				only_one_zero_in_col := boxes.CheckRowsforZeros(transposed_Grid[i])
				if only_one_zero_in_row == true {
					intGrid[i] = solveFirstIteration(intGrid[i])
				}
				if only_one_zero_in_col == true {
					transposed_Grid = transposeGrid(intGrid)
					transposed_Grid[i] = solveFirstIteration(transposed_Grid[i])
					intGrid = transposeGrid(transposed_Grid)
				}
			}
		}
		//View_grid(intGrid)
		numbers_3D_grid, intGrid = Remove_numbers_in_zero_slots(numbers_3D_grid, intGrid)

		//View_grid(intGrid)
		for i := 0; i < 9; i = i + 3 {
			for j := 0; j < 9; j = j + 3 {
				//fmt.Println(i, j)
				numbers_3D_grid, intGrid = removePossibilitiesfromBox(numbers_3D_grid, intGrid, i, j)
				numbers_3D_grid, intGrid = only_one_in_box(numbers_3D_grid, intGrid, i, j)
				numbers_3D_grid, intGrid = eliminate(numbers_3D_grid, intGrid, i, j)
				//numbers_3D_grid, intGrid = two_and_rest(numbers_3D_grid, intGrid, i, j)
			}
		}
		numbers_3D_grid, intGrid = removePossibilitiesfromRow(numbers_3D_grid, intGrid)
		//numbers_3D_grid, intGrid = one_row_option(numbers_3D_grid, intGrid)

		//View_grid(intGrid)
		numbers_3D_grid, intGrid = replaceNumber(numbers_3D_grid, intGrid)

		//numbers_3D_grid, intGrid = removePossibilitiesfromBox(numbers_3D_grid, intGrid, 0, 6)
		//View_grid(intGrid)
		//}
		//numbers_3D_grid, intGrid = one_row_option(numbers_3D_grid, intGrid)
		printNumbers(numbers_3D_grid)
		View_grid(intGrid)
		//fmt.Println(done(numbers_3D_grid))

	}

}
