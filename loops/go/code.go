package main

import (
	"fmt"
	"math/rand"
	"os"
	"strconv"
	"time"
)

func main() {
	input, e := strconv.Atoi(os.Args[1]) // Get an input number from the command line
	if e != nil {
		panic(e)
	}
	u := int32(input)
	t1 := time.Now()
	r := rand.Int31n(10000) // Get a random number 0 <= r < 10k
	t2 := time.Now()
	var a [10000]int32                  // Array of 10k elements initialized to 0
	for i := int32(0); i < 10000; i++ { // 10k outer loop iterations
		for j := int32(0); j < 100000; j++ { // 100k inner loop iterations, per outer loop iteration
			a[i] = a[i] + j%u // Simple sum
		}
		a[i] += r // Add a random value to each element in array
	}
	t3 := time.Now()
	fmt.Println(a[r]) // Print out a single element from the array
	fmt.Printf("rand=%s, loop=%s", t2.Sub(t1), t3.Sub(t2))
}
