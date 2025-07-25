#!/bin/bash

# Ensure Git status uses color
GIT_COLOR_STATUS=$(git -c color.status=always status)

# Extract each section using awk
ON_BRANCH=$(echo "$GIT_COLOR_STATUS" | awk '/^On branch /,/^$/' ORS='\n')
TO_BE_COMMITTED=$(echo "$GIT_COLOR_STATUS" | awk '/Changes to be committed:/,/^$/' ORS='\n')
NOT_STAGED=$(echo "$GIT_COLOR_STATUS" | awk '/Changes not staged for commit:/,/^$/' ORS='\n')
UNTRACKED=$(echo "$GIT_COLOR_STATUS" | awk '/Untracked files:/,/^$/' ORS='\n')

# Print in reverse order
echo "$UNTRACKED"
echo "$NOT_STAGED"
echo "$TO_BE_COMMITTED"
echo "$ON_BRANCH"

