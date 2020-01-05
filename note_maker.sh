#!/usr/bin/env bash
shopt -s extglob
IFS=$'\n'
set -f

notebook_name=""
file_extension=""
language="${PWD##*/}"

check_usage () {
        case "$1" in
                *.md) notebook_name="$1" ;;
                *) echo "Usage: exercism-note-maker <notebook_name.md><track_file_extension>" ;;
        esac
        case "$2" in
                .*) file_extension="$2" ;;
                *) echo "Usage: exercism-note-maker <notebook_name.md><track_file_extension>" ;;
        esac
}

main () {
        check_usage "$@"
        for i in $( find ./ -maxdepth 2 -name "*$file_extension" ! -name '*test*' ) ; do
                {
                        printf "###$i\n\`\`\`$language \n $(cat "$i") \`\`\` \n"
                } >> "$notebook_name" 
        done
}
main "$@"


