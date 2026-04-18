#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
CV_DIR="$ROOT_DIR/cv"
BUILD_DIR="$CV_DIR/build"
OUTPUT_PDF="$BUILD_DIR/main.pdf"
SITE_PDF="$ROOT_DIR/files/Shiheng_Zhang_CV.pdf"

if ! command -v latexmk >/dev/null 2>&1 || ! command -v biber >/dev/null 2>&1; then
  echo "Skipping CV build because latexmk or biber is unavailable."
  exit 0
fi

mkdir -p "$BUILD_DIR"

(
  cd "$CV_DIR"
  latexmk -pdf -interaction=nonstopmode -outdir=build main.tex
)

cp "$OUTPUT_PDF" "$SITE_PDF"
echo "Updated $SITE_PDF"
