#!/bin/bash
# This script executes the Jmeter Tes Plan fetched from the S3 bucket.

/apache-jmeter/bin/jmeter -n -t /apache-jmeter/bin/examples/PerformanceTestPlanMemoryThread.jmx -l myscript.xml -j myscript.log -Jjmeter.save.saveservice.output_format=xml -Jjmeter.save.saveservice.response_data=true -Jjmeter.save.saveservice .samplerData=true -JnumberOfThreads=20 -JloopCount=50
