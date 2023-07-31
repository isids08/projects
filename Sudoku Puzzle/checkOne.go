package main

func only_one_value_rem(input []*Box) (out bool) {
	var sum int = 0

	for k := 0; k < 9; k++ {
		//fmt.Println(input[k].number)
		sum = 0
		if input[k].number != 0 {
			sum = sum + 1
		}

	}
	if sum > 1 {
		return false
	}
	return true
}
