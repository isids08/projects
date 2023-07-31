package main

func sumRow(array []int) int {
	result := 0
	for _, v := range array {
		result = result + v
	}
	return result
}
