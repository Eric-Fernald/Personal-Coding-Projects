// Fetchall fetches URLs in parallel and reports their times and sizes.

package main

import (
	"fmt"
	"io"
	"net/http"
	"os"
	"time"
)

func main() {
	start := time.Now()
	ch := make(chan string) // unbuffered channel; each send blocks until main receives
	for _, url := range os.Args[1:] {
		go fetch(url, ch) // fan-out: one goroutine per URL, all run concurrently
	}
	// fan-in: collect exactly one result per goroutine before printing total elapsed
	for range os.Args[1:] {
		fmt.Println(<-ch)
	}
	fmt.Printf("%.2fs elapsed\n", time.Since(start).Seconds())
}

// fetch sends a single result string to ch; ch is send-only to prevent accidental reads.
func fetch(url string, ch chan<- string) {
	start := time.Now()
	resp, err := http.Get(url)
	if err != nil {
		ch <- fmt.Sprint(err)
		return
	}
	// Drain body so the underlying TCP connection can be reused; io.Discard counts bytes without storing them.
	nbytes, err := io.Copy(io.Discard, resp.Body)
	resp.Body.Close() // must close to avoid leaking the connection
	if err != nil {
		ch <- fmt.Sprintf("while reading %s: %v", url, err)
		return
	}
	secs := time.Since(start).Seconds()
	ch <- fmt.Sprintf("%.2fs %7d %s", secs, nbytes, url)
}
