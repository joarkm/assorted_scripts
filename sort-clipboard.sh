#!/bin/bash
# - reads the contents of the clipboard
# - sorts it
# - updates the clipboard
# Note: requires xsel

xsel -b | sort | xsel -i -b