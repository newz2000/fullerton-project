@echo off
java -jar dep/jsTestDriver/JsTestDriver-1.3.5.jar --captureConsole --config static/js/tests/test.conf --tests all
pause
