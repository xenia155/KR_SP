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
- **Output**:

```
Firefox/1.5.0.7 - 1151 - 27.82%
http://ranchero.com/netnewswire/ - 877 - 21.19%
http://ranchero.com/netnewswire/ - 542 - 13.10%
http://help.yahoo.com/help/us/ysearch/slurp - 417 - 10.08%
http://search.msn.com/msnbot.htm - 317 - 7.66%
1.1.4322 - 266 - 6.43%
Safari - 236 - 5.70%
Corp - 114 - 2.75%
http://www.jetbrains.com/omea/reader/ - 112 - 2.71%
Firefox/1.5.0.7 - 106 - 2.56%
```
