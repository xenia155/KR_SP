# KR_SP

# General

This Bash script is designed to analyze an Apache web server access log. It identifies the top 10 programs (clients) by the amount of downloaded bytes and calculates their percentage of the total data downloaded.

# How it works

1. **Specify the path to the access log file** by setting the `log_file` variable within the script.
2. **Make the script executable** using `chmod +x analyze_log.sh`.
3. **Run the script** with `./analyze_log.sh`.

The results of the analysis will be displayed in the standard output.

# Usage

- **Used utilities**: `awk`, `sed`, `sort`, `uniq`, and `head`.

