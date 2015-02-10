# Compass html5bp

This is a [Compass extension](http://compass-style.org/help/tutorials/extensions/) of HTML5 mixins extracted from v5 of [HTML5 Boilerplate](http://html5boilerplate.com), forked from Peter Gumeson's original gem, [compass-h5bp](https://github.com/sporkd/compass-h5bp).
This gem provides only the CSS mixins and not the HTML or Javascript templates. This makes sense because any
implementation of HTML5 Boilerplate should be specific to the language and framework it's built on.

## Installation

### Two options:
* A raw install using gem:
`gem install compass-html5bp`

* Or, if you're using [Bundler](http://gembundler.com/), you can install it via `bundle install` by placing the following line in your Gemfile: `gem 'compass-html5bp'`

## Usage

First, you must add the plugin to your `config.rb` (your Compass configuration file). This can be done be placing an
import line at the top of the file and is required to add the compass plugin to the sass load paths:

    require 'compass-html5bp'

### HTML5BP SCSS File Order
The following order ensures your custom modifications to the HTML Boilerplate styles will work as expected, by following the outline provided in the upstream HTML5 Boilerplate CSS.

1. Inside your SCSS (or Sass) file, you must import the `html5bp` compass library before you can use any of the mixins:

    `@import "html5bp";`

2. Include the mixins that make up the [Normalize](http://necolas.github.com/normalize.css) portion of the HTML5
Boilerplate styles. You can include all of Normalize at once:

    `@include html5bp-normalize;`

 Or pull in only the portions of Normalize you want:

    @include html5bp-base;
    @include html5bp-display;
    @include html5bp-links;
    @include html5bp-semantics;
    @include html5bp-embedded;
    @include html5bp-grouping;
    @include html5bp-forms;
    @include html5bp-tables;

3. *Optional:* Include the opinionated default base styles:

    `@include html5bp-base-styles;`

4. *Optional:* You can include the styling for the browser upgrade warning:

    `@include html5bp-browserupgrade;`

5. *Optional:* Define your custom modifications to the HTML5 Boilerplate styles here.

6. *Optional:* Let html5bp define some semantic helper classes. (e.g. `.clearfix`):

    `@include html5bp-helpers;`

7. *Optional:* Include html5bp's predefined print style media query:

    `@include html5bp-media;`

## Caveats

If you're coming from [compass-h5bp](https://github.com/sporkd/compass-h5bp), be aware several normalize mixins have had their name changed, and any mixin or feature that had been marked for deprecation has been removed. That being said, migration should be relatively simple.

The order above matters. It's important to note that "custom modifications to the HTML5 Boilerplate styles" means only that - the rest of your scss goes below everything here.

I am no rubyist, so if I've botched any patches to the Ruby-specific stuff, please do open an issue or, better, submit a pull request.

Then again, I might have botched anything else as well, so any contributions are very welcome.

## Acknowledgments

[HTML5 Boilerplate](http://html5boilerplate.com), created by by Paul Irish and Divya Manian.

Original work is Copyright (c) 2012 Peter Gumeson.
This fork is Copyright (c) 2015 Ron Scott-Adams, under the same license as the original.
See [LICENSE](https://github.com/tohuw/compass-html5bp/blob/master/LICENSE) for full license.
