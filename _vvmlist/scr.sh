#!/usr/bin/env bash

shopt -s nullglob

for file in *.md; do
    # Extract base name without extension (handles spaces)
    base="${file%.md}"

    echo "Processing: $file (base: '$base')"

    # Use awk to update the YAML block
    awk -v item="$base" '
        BEGIN {
            in_curls = 0
        }

        /^curls:/ {
            in_curls = 1
            print
            next
        }

        # Exit curls block when next top-level key appears
        /^[A-Za-z0-9_]+:/ && $0 !~ /^curls:/ {
            if (in_curls == 1 && !added) {
                print "  " item "ac:"
                print "    -"
                print "  " item "cm:"
                print "    -"
                added = 1
            }
            in_curls = 0
            print
            next
        }

        # Inside curls block
        {
            print
            next
        }

        END {
            # If curls: is last block in file
            if (in_curls == 1 && !added) {
                print "  " item "ac:"
                print "    -"
                print "  " item "cm:"
                print "    -"
            }
        }
    ' "$file" > "${file}.tmp"

    mv "${file}.tmp" "$file"
done
