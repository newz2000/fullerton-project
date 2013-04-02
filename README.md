# The Fullerton Project - Front End Development Best Practices for Everyone

By [Matthew Nuzum](http://www.bearfruit.org).

Does it seem that many front-end web development projects seem to target Mac users? Or have you noticed that they require you to install numerous tools and command line utilities?

It doesn't have to be this way!

**You can build web apps utilizing the best tools and practices with any computer and without installing a bunch of dependencies!**

This is a downloadable boilerplate project that you can use for your code that gives you the following:

 * [Sass](http://sass-lang.com/), an evolution to CSS
 * [JS Lint](http://www.jslint.com/lint.html), a code quality tool
 * [Javascript test runner](https://code.google.com/p/js-test-driver/wiki/GettingStarted) (JsTestDriver)
 * [Closure compiler](https://developers.google.com/closure/compiler/) (coming soon)

These tools work in Mac, Windows and Linux with no installation except Java. (Java 6 and 7 are both confirmed working)

Use them to build your next big PHP, Java, Ruby, HTML, whatever app for the web.

That's right, if your computer has Java installed then you can begin using these great tools today!

## Getting started

Download the zip file and unpack it. You'll see two folders, static and dep. Leave dep alone, it's where the tools live.

The static folder is where you keep your assets such as Javscript, Sass/CSS, Web fonts and images.

You can put your HTML/PHP/Whatever files wherever you like (but you should probably not put them in dep)

In the root of the project you'll notice a few .sh and .bat files. The .sh files are for Mac and Linux and the .bat files are for Windows. If you only use Windows you can delete the .sh files, if you only use Mac or Linux you are free to delete the .bat files.

### Running the Javascript tests

This is a three-step process. All the steps are easy, so don't panic.

#### Run the server

Windows users can simply double click the js-server.bat file. It will pop open a command window. Keep it open, we'll need it!

Mac and Linux users should open a terminal (yes, sorry). In order to run the scripts successfully you need to change your terminal's folder to the folder where your project lives. To do this, type: cd (and then hit space). Now drag the folder your project is in onto the terminal. The end result will look something like this: `cd \some\path\to\your\project\` then press enter.

I'll bet you did that faster than it took to read that paragraph!

Now run the server command: `./js-server.sh`

#### Prepare your browser to run the tests

JsTestDriver is awesome. You can run your Javascript tests with any browser you like. So open your favorite browser and load this special URL to connect it to the test server: `http://localhost:9876/capture?strict` (the server console window shows you this same link)

#### Run the tests

Windows users, simply double click the js-test.bat file. It will open a window and show you the results of your Javascript tests.

Mac and Linux users, you have to open a second tab in your terminal or a second terminal window. Once you do that, repeat the process of dragging the folder into the terminal: type cd (space) then drag the folder into the terminal and press enter.

Now run the Javascript tests with this command: `./js-test.sh`

Everyone should see the results of the tests. The project comes with a test pre-made for you. It should have passed.

When you're done running the tests you can close the terminal windows. Windows users, you may get a warning, you can ignore it, or if you can't stand the warning, hit ctrl+c in the window and it will go away.

#### Write your own tests. 

Docs for this are coming soon, but for now check out the nice docs at the [JsTestDriver website](https://code.google.com/p/js-test-driver/wiki/GettingStarted).

### Compiling Sass and running JSLint

The build tool compiles the Sass for you and runs JSLint. There is an example scss file in static/scss called style.scss. It should be your main scss file. When you run the build command it will compile into css and put it at static/css/style.css. It will be minified and ugly, ready for production!

#### Evil JSLint

The next part of the build tool will show you all the warnings about your Javascript. It will probably hurt your feelings. That's OK. If you read the warnings and fix the complaints your Javascript code will be beautiful and people all around will praise you on how awesome you are.

You should [read more about JSLint](http://www.jslint.com/lint.html), but the short-version is that Javascript is very permissive and lets you write code that is hard to parse. Just because you can, doesn't mean you should. Instead, let JSLint help you write very clean code that is easy for machines to interpret correctly.

#### Closure compiler (coming soon)

To prepare your Javascript for production deployment it will be run through the amazing Closure compiler. Your beautiful Javascript will be compiled into ugly Javascript. It will be machine-optimized wherever possible so that it loads and runs fast.

This feature is not done yet. Release early, release often so they say.

## Road map

Current version is 0.4. It supports JSLint, Sass and JsTestDriver. It has been tested with Windows XP running Java 7, Mac OS 10.7 running Java 6 and Ubuntu 12.04 LTS running Java 6.

### History

 * v0.1 Create the project with example files, the basic scripts and principles
 * v0.2 Use jRuby to compile Sass
 * v0.3 Run the JSLint tool
 * v0.4 Enable JS Test Driver

### Future

 * v0.5 Enable Closure compiler in build.sh
 * v0.6 Shrink the size of the zip file and initial project (especially jruby)
 * v0.7 Enable command line parameters to enable only various steps, i.e. Run only the Sass build or JS Lint.
 * v0.8 Enable parameters to produce different kinds of output (i.e. debuggable css and/or js)
 * v0.9 Make it easier to run the JS Tests (one console window? Or maybe a very simple GUI app for launching the various pieces?)
 * v1.0 Excellent documentation
 
Other ideas:

 * Show examples of using other JS Testing frameworks such as QUnit or Jasmine, both of which can be run on top of js-test-driver.

## What's included

Yes, the download for this is a bit large. That's because it strives to make life simple by including all the pieces.

So what are the pieces?

* [jruby](http://jruby.org/) - for running the sass compiler. jruby is released under various open source licenses, see dep/jruby/COPYING for details
* [SASS](http://sass-lang.com/) - compiles into CSS. Sass is provided via the MIT license
* [jslint4java](http://code.google.com/p/jslint4java/) - makes it simple to run JSLint. It is provided via the BSD license.
* [closure-compiler](https://developers.google.com/closure/compiler/) - Optimizes and compiles Javascript. Closure-compiler is provided via the Apache 2.0 license
* [js-test-driver](https://code.google.com/p/js-test-driver/) - Run your Javascript unit tests. js-test-driver is provided via the Apache 2.0 license
* [normalize.css](git.io/normalize) - a sample .scss file that helps provide consistent CSS styles for all browser. (better than a reset) Normalize.css is provided via the MIT license
* Custom code comprising the [Fullerton project](https://github.com/newz2000) released under the BSD license
