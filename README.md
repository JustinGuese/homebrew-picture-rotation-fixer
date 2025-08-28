# Homebrew Tap: picture-rotation-fixer

This script automatically rotates scanned family photos to the correct orientation using face detection.
It checks each image at 0°, 90°, 180°, 270° and keeps the first orientation where a face is detected upright.

This Homebrew tap provides the [`picture-rotation-fixer`](https://github.com/JustinGuese/picture-rotation-fixer) CLI tool for auto-rotating scanned photos to the correct orientation using face detection.

## Installation

First, add this tap:

```sh
brew tap JustinGuese/homebrew-picture-rotation-fixer
```

Then install the CLI tool:

```sh
brew install picture-rotation-fixer
```

## Usage

After installation, run:

`picture-rotation-fixer /path/to/your/photos`
