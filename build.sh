#!/bin/sh

# ----------------
# README:
# EDIT THIS TO BE WHERE YOU WANT YOUR CSS TO END UP
# THE SASS COMPILER WILL OVERWRITE YOUR EXISTING FILE
# AND REPLACE IT WITH A NEW VERSION.
CSS_OUTPUT=static/css/style.css

# END README
# -----------------

# SASS
./dep/jruby/bin/jruby ./dep/jruby/bin/scss -t compressed static/scss/style.scss > $CSS_OUTPUT

# JSLINT
java -jar dep/jslint4java/jslint4java-2.0.3.jar --browser static/js/*.js

# JSTESTDRIVER


