# GoogleTest
To use GoogleTest in [ZPM](http://zpm.zefiros.eu), just use:

# Status
OS          | Status
----------- | -------
Linux & OSX | [![Build Status](https://travis-ci.org/Zefiros-Software/GoogleTest.svg?branch=master)](https://travis-ci.org/Zefiros-Software/GoogleTest)
Windows     | [![Build status](https://ci.appveyor.com/api/projects/status/0fiv2cvq4gjb8vag?svg=true)](https://ci.appveyor.com/project/PaulVisscher/googletest)

# [ZPM](http://zpm.zefiros.eu) Installation
In `.package.json`
```json
"requires": [
		{
			"name": "Zefiros-Software/GoogleTest",
			"version": "@head"
		}
]
```

In `premake5.lua`
```lua
zpm.uses "Zefiros-Software/GoogleTest"
```