package main

import (
	"log"

	app "godep/routes"
)

func main() {

	err := app.ApiServer()
	if err != nil {
		log.Fatal("Unable to start API server.")
	}
}
