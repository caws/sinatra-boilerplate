Sinatra API
=======================

A boilerplate for **Sinatra** APIs.
Not production ready probably.

Usage
-----

Run the following command to execute the basic setup:

```bash
$ bin/setup
```

You can use the config.ru to run the server (with RubyMine for example), but you can also run it with the following:

```bash
$ bin/bundle exec foreman start
```

Run the tests with:

```bash
$ bin/rake spec
```

Dependencies
------------

This boilerplate has the following dependencies:

- Ruby (v3.x)
- PostgreSQL
- Blueprinter

Changelog
---------

### 1.3.0 (October 2nd, 2021)

Bumped Ruby to 3.0.1, updated database name, prepared rspec to run specs from Bounded Contexts.

### 1.2.0 (January 21, 2020)

Updated Ruby to 2.6.5 and gems to latest versions.

### 1.0.0 (September 14, 2017)
Hello world! This is the first commit to this repository.  Starting out, the
boilerplate includes the following gems:

- Active Record (v5.1.4)
- Foreman (v0.84.0)
- Postgres (v0.21.0)
- Pry (v0.10.4)
- Rack Test (v0.7.0
- Rake (v12.1.0)
- RSpec (v3.6.0)
- Sinatra (v2.0.0)
- Sinatra Contrib (v2.0.0)

The following utilities are also included:

- A basic Sinatra app that serves static files from public
- Binstubs for bundle, rake, and setup
- Autoloaded ActiveRecord models
- Per environment database configuration
- An example spec and default Raketask to run the suite


License
---------

The MIT License (MIT)

Copyright (c) 2017 Major League Hacking, Inc.

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
