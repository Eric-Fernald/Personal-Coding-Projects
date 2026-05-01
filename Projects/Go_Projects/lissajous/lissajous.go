// Lissajous generates GIF animations of random Lissajous figures.
package main

import (
	"image"
	"image/color"
	"image/gif"
	"io"
	"math"
	"math/rand"
	"os"
)

var palette = []color.Color{color.White, color.Black}

const (
	whiteIndex = 0 // first color in palette
	blackIndex = 1 // next color in palette
)

func main() {
	lissajous(os.Stdout)
}

func lissajous(out io.Writer) {
	const (
		cycles  = 5     // number of complete x oscillator revolutions
		res     = 0.001 // angular resolution: smaller = smoother curve, more iterations
		size    = 100   // half-width/height of canvas in pixels; full canvas is (2*size+1)^2
		nframes = 64    // number of animation frames in the GIF
		delay   = 8     // inter-frame delay in 10ms units (8 = 80ms ≈ 12.5 fps)
	)

	// freq is the y oscillator's frequency relative to x; random ratio produces varied shapes.
	// A rational ratio (e.g. 2.0) yields a closed, repeating curve; irrational fills the canvas.
	freq := rand.Float64() * 3.0
	anim := gif.GIF{LoopCount: nframes}
	phase := 0.0 // phase offset between x and y oscillators; incremented each frame to animate

	for i := 0; i < nframes; i++ {
		rect := image.Rect(0, 0, 2*size+1, 2*size+1)
		img := image.NewPaletted(rect, palette)

		// Trace the Lissajous curve: x=sin(t), y=sin(freq*t+phase).
		// t sweeps over 'cycles' full revolutions of the x oscillator.
		for t := 0.0; t < cycles*2*math.Pi; t += res {
			x := math.Sin(t)
			y := math.Sin(t*freq + phase)
			// Map sine output [-1,1] to pixel coords [0, 2*size]; +0.5 rounds before int truncation.
			img.SetColorIndex(size+int(x*size+0.5), size+int(y*size+0.5), blackIndex)
		}

		// Advance phase so each frame shows the curve at a slightly different angle,
		// producing the animation effect when frames are played in sequence.
		phase += 0.1
		anim.Delay = append(anim.Delay, delay)
		anim.Image = append(anim.Image, img)
	}
	gif.EncodeAll(out, &anim) // NOTE: ignoring encoding errors
}
