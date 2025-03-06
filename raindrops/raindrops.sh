#!/usr/bin/env bash

number=$1
result=""
rules=("3 Pling" "5 Plang" "7 Plong")

for rule in "${rules[@]}"; do
    divisor=${rule% *}
    sound=${rule#* }
    if (( number % divisor == 0 )); then
        result+=$sound
    fi
done

[[ -z "$result" ]] && echo "$number" || echo "$result"