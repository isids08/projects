package main

import "fmt"

func printNumbers(x [][][]*Box) {
	for i := 0; i < 9; i++ {
		for j := 0; j < 9; j++ {
			for k := 0; k < 9; k++ {
				fmt.Printf("%d ", x[i][j][k].number)
			}
			fmt.Println()
		}
		fmt.Println()
	}
}
