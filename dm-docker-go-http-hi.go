package main

import (
	"log"
	"net/http"
	"os"
)

var logger = log.New(os.Stdout, " ", log.Ldate|log.Ltime|log.Lshortfile)

func main() {

	port := ":8080"

	logger.Printf("Starting server on: %s", port)

	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		w.Write([]byte(`Hello world!`))
	})

	logger.Fatal(http.ListenAndServe(port, nil))
}
