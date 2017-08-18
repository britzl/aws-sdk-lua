# AWS SDK for Lua (beta)
Unofficial AWS SDK for Lua, available for LuaJIT and Lua 5.1 and later.

The SDK is still in development and should not be considered production ready.

For release notes, see the [CHANGELOG](CHANGELOG.md). Prior to v2.4.8, release notes can be found at http://aws.amazon.com/releasenotes/SDK/JavaScript

## Installing

### Defold
You can use Google Analytics in your own project by adding this project as a [Defold library dependency](http://www.defold.com/manuals/libraries/). Open your game.project file and in the dependencies field under project add:

	https://github.com/britzl/aws-sdk-lua/archive/master.zip

Or point to the ZIP file of a [specific release](https://github.com/britzl/aws-sdk-lua/releases).


### LuaRocks
The SDK is currently not distributed via LuaRocks. LuaRocks distribution will happen once the SDK is stable and moved out of beta.

## Usage and Getting Started
More here soon

### Known Limitations
GameLift is the only service that has been tested.

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
