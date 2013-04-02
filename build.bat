@echo off

.\dep\jruby\bin\jruby .\dep\jruby\bin\scss -t compressed static\scss\style.scss > static\css\style.css

java -jar dep\jslint4java\jslint4java-2.0.3.jar --browser static\js\*.js

pause

