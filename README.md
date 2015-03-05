# An HTML5 Boilerplate Extension for Compass

This is a [Compass extension](http://compass-style.org/help/tutorials/extensions/) of HTML5 mixins extracted from v5 of the [HTML5 Boilerplate](http://html5boilerplate.com).

This gem provides only the CSS mixins and not the HTML or JavaScript templates. Implementation of these and similar files ought to be managed by the framework and language your project is built upon.

## Installation

### Two options:
* Install using gem:
`gem install compass-h5bp`

* Or, if you're using [Bundler](http://gembundler.com/), you can install it via `bundle install` after placing the following line in your Gemfile: `gem 'compass-h5bp'`

## Usage

First, you must add the plugin to your `config.rb` (your Compass configuration file). This can be done be placing an
import line at the top of the file and is required to add the Compass plugin to the Sass load paths:

    require 'compass-h5bp'

Inside your SCSS (or Sass) file, you must import the `h5bp` compass library before you can use any of the mixins:

    @import "h5bp";

### Simple Implementation
1. Include the h5bp mixin:

        @include h5bp;

2. *Optional:* Redefine the mixin `h5bp-custom` to declare custom modifications to the HTML5 Boilerplate styles.

### Advanced Implementation
To selectively import only certain elements, observe the following order. This ensures your custom modifications to the HTML Boilerplate styles will work as expected, by following the outline provided in the upstream HTML5 Boilerplate CSS.

1. Include the mixins that make up the [Normalize](http://necolas.github.com/normalize.css) portion of the HTML5
Boilerplate styles. You can include all of Normalize at once:

        @include h5bp-normalize;

 Or pull in only the portions of Normalize you want:

        @include normalize-base;
        @include normalize-display;
        @include normalize-links;
        @include normalize-semantics;
        @include normalize-embedded;
        @include normalize-grouping;
        @include normalize-forms;
        @include normalize-tables;

2. Include the opinionated default base styles:

        @include h5bp-base-styles;

3. You can include the styling for the browser upgrade warning:

        @include h5bp-browserupgrade;

4. Provide styling to the 404 page (requires that you specify the class `errorpage` for the html of the 404 document):

        @include h5bp-errorpage;

5. Define your custom modifications to the HTML5 Boilerplate styles here.

6. Let h5bp define some semantic helper classes. (e.g. `.clearfix`):

        @include h5bp-helpers;

    There are also specific mixins provided in `h5bp-helpers` you can call instead.

7. Include h5bp's predefined print style media query:

        @include h5bp-media;

## Caveats

If you're coming from a previous version, be aware that several mixins have had their name changed, and any mixin or feature that had been marked for deprecation has been removed. That being said, migration should be relatively simple.

The order for the "Advanced Implementation" matters. It's important to note that "custom modifications to the HTML5 Boilerplate styles" means only that - the rest of your SCSS goes below everything listed.

## Acknowledgments

[HTML5 Boilerplate](http://html5boilerplate.com), created by by Paul Irish and Divya Manian.

Copyright (c) 2012 Peter Gumeson.
You can read a [summary of the MIT license](https://tldrlegal.com/license/mit-license#summary), or see [LICENSE](https://github.com/tohuw/compass-h5bp/blob/master/LICENSE) for the full license.
