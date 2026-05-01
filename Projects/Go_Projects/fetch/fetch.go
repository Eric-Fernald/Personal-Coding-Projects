// Fetch prints the content found at each URL.
package main

import (
	"fmt"
	"io"
	"net/http"
	"os"
)

func main() {
	// Iterate over each URL provided as a command-line argument.
	for _, url := range os.Args[1:] {
		resp, err := http.Get(url)
		if err != nil {
			// Write error to stderr so it's separable from normal output, then exit.
			fmt.Fprintf(os.Stderr, "fetch: %v\n", err)
			os.Exit(1)
		}
		b, err := io.ReadAll(resp.Body)
		resp.Body.Close() // must close to avoid leaking the underlying TCP connection
		if err != nil {
			fmt.Fprintf(os.Stderr, "fetch: reading %s: %v\n", url, err)
			os.Exit(1)
		}
		fmt.Printf("%s", b)
	}
}