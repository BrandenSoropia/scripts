##`new-post.sh`
###Arguments
1.`title` (string): Title of post and will be appended to the file's name after the date. ex: "My Markdown File"
2.`destination_path` (string):  Destination file path including ending back slash ex: "./path/to/destination/

Creates a markdown file titled `YYYY-MM-DD-TITLE.md` with `date` and `title` front matter set, in given `destination_path`.

###TODO:
1.Default folder `./_posts`

##`copy-to-bin.sh`
###ARGUMENTS
1.`file_path(s)` (string, paths separated by spaces if more than one): File path(s) to copy to bin.

Copies given files to `~/../../../usr/local/bin`. If files exist already, prompts if it should overwrite.
