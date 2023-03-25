package main

import (
	"fmt"
	"github.com/akamensky/argparse"
	"os"
)

func main() {
	fmt.Println("Welcome to kopi, your friendly copy utility")
	parser := argparse.NewParser("print", "Prints provided string to stdout")
	// Create string flag
	source := parser.String("source", "string", &argparse.Options{Required: true, Help: "String to print"})
	target := parser.String("target", "string", &argparse.Options{Required: true, Help: "String to print"})
	// Parse input
	err := parser.Parse(os.Args)
	if err != nil {
		// In case of error print error and print usage
		// This can also be done by passing -h or --help flags
		fmt.Print(parser.Usage(err))
	}
	// Finally print the collected string
	fmt.Println(*source)
	fmt.Println(*target)
}
