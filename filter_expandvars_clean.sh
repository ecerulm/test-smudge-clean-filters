#!/bin/bash
set -euo pipefail
sed "s/\(version = \"\)[^\"']*/\1\$VERSION/"
