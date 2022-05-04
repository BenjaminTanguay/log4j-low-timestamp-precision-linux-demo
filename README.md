# Log4j2 lack of precision on clock on linux

This project demonstrates the lack of precision of timestamps in log4j2 under a linux system. Somehow, the same jar created in this project works properly on a windows system.

Prerequisite to execute the demo:
- Have some recent java version installed (This was tested on Java 11 with multiple JDK vendors and Java 18 with adoptopenjdk)
- Have docker installed
- Have git bash installed if you are on windows

To execute, simply call the script demo.sh. 

**Expected**: have the micro and nano seconds on the timestamp be populated

**Actual**: The timestamp will have the format "2022-05-04T18:48:23.716000000Z" and the micro / nano seconds will be set to 0.
