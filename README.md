# Log-archive

Simple CLI tool that helps you in archiving logs in a .tar.gz format with a timestamp. Support one time logging and also systematic logging every x seconds.




## Overview

You run the tool by using `./log-archive.sh <logs_directory> <time_in_seconds>` , 1st argument is required but 2nd is optional. 2nd argument makes it that the script will archive logs every given amount of seconds. Archives are stored in ~/log-archive/archives

## How to install

1. You need to have `tar` installed on your system.
2. Clone this repository:
   ```bash
   git clone https://github.com/Syzyf21/log-archive
   ```
3. Run the script:
   ```bash
   ./log-archive.sh /var/my-logs
   ```

   or
   ```bash
   ./log-archive.sh /var/my-logs 10
   ```

   


## Project Reference

[roadmap.sh](https://roadmap.sh/projects/log-archive-tool)
