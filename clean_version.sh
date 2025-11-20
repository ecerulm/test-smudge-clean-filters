#!/bin/bash
sed "s/\(version = \"\)[^\"']*/\1\$VERSION/"
