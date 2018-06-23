#!/bin/bash
# - reads the contents of the clipboard
# - removes empty lines
# - updates the clipboard
# Note: requires xsel

xsel -b | sed '/^\s*$/d' | xsel -i -b