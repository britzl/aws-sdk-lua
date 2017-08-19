# AWS SDK for Lua (beta)
Unofficial AWS SDK for Lua, available for LuaJIT and Lua 5.1 and later.

The SDK is still in development and should not be considered production ready.

For release notes, see the [CHANGELOG](CHANGELOG.md).

## Installing

### Defold
You can use the AWS SDK for Lua in your own project by adding this project as a [Defold library dependency](http://www.defold.com/manuals/libraries/). Open your game.project file and in the dependencies field under project add:

	https://github.com/britzl/aws-sdk-lua/archive/master.zip

Or point to the ZIP file of a [specific release](https://github.com/britzl/aws-sdk-lua/releases).


### LuaRocks
The SDK is currently not distributed via LuaRocks. LuaRocks distribution will happen once the SDK is stable and moved out of beta.

## Usage and Getting Started
More here soon

### Known Limitations
GameLift is the only service that has been properly tested.


## Generating code
The SDK generates the code for all AWS services, their input and output including input validation. The code generator uses official AWS SDK API definitions from the [AWS SDK for Javascript project](https://github.com/aws/aws-sdk-js/tree/master/apis). The code generator uses a [Mustache template](https://mustache.github.io/) and a small Python script to parse the API definitions and outputs one Lua file per AWS service. You can run the generator yourself from a terminal:

````
python generate.py
````

The script reads the definition files from ````apis/```` folder and outputs generated code to the ````aws-sdk/```` folder.

## Getting Help
Please use these community resources for getting help. We use the GitHub issues for tracking bugs and feature requests and have limited bandwidth to address them.

 * Ask a question on the [Defold forum](https://forum.defold.com/)
 * Come join the Defold [slack channel](https://www.defold.com/slack/)
 * If it turns out that you may have found a bug, please [open an issue](https://github.com/britzl/aws-sdk-lua/issues/new)

## Opening Issues
If you encounter a bug with the AWS SDK for Lua we would like to hear
about it. Search the [existing issues](https://github.com/britzl/aws-sdk-lua/issues)
and try to make sure your problem doesn’t already exist before opening a new
issue. It’s helpful if you include the version of the SDK and the Lua version
you’re using. Please include a stack trace and reduced repro
case when appropriate, too.

The GitHub issues are intended for bug reports and feature requests. For help
and questions with using the AWS SDK for Lua please make use of the
resources listed in the [Getting Help](https://github.com/britzl/aws-sdk-lua#getting-help)
section. There are limited resources available for handling issues and by
keeping the list of open issues lean we can respond in a timely manner.

## License
This SDK is distributed under the
[Apache License, Version 2.0](http://www.apache.org/licenses/LICENSE-2.0),
see LICENSE.txt for more information.

## Third-party code used
The SDK uses code from the following projects:

* AWS Service definitions from the [AWS SDK for Javascript](https://github.com/aws/aws-sdk-js/tree/master/apis)
* Cryptographic functions from the [Lua-Lockbox](https://github.com/somesocks/lua-lockbox) project.
* JSON encoder from [json.lua](https://github.com/rxi/json.lua)
* URL encode/decode from the [Lua User Wiki]()
