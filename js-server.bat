@echo off 
echo Visit http://localhost:9876/capture?strict with your browser to capture it for testing then run the tests by running js-tests.
echo Close this terminal or press ctrl+c to exit the test server.

java -jar dep/jsTestDriver/JsTestDriver-1.3.5.jar --config static/js/tests/test.conf --port 9876

echo
echo Test server exiting...
pause
