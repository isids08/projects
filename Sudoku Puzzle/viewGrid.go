package main

import "fmt"

func View_grid(input [][]int) {
	for i := range input {
		for _, value := range input[i] {
			fmt.Print(value, " ")
		}
		fmt.Println()
	}
	fmt.Println()
}
