#!/bin/bash
set -euo pipefail
export VERSION=$(git describe --always |sed 's/^v//; s/-/\.post/; s/-g/\+/')
envsubst

