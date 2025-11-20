#!/bin/bash
export VERSION=$(git describe|sed 's/^v//; s/-/\.post/; s/-g/\+/')
envsubst

