# WaniKani Breeze Dark Theme

[![Install directly with Stylus][stylus_badge]][usercss]
[![pipeline status][pipeline_badge]][commits]

A theme for the WaniKani website using the [KDE Breeze](https://hig.kde.org/style/color/dark.html) theme color palette.

Requires the Stylus browser extension.

# How to build it yourself

## The ruby way

> Only required if you want to have the latest development version.

You need:
- git (obviously)
- ruby (for the gem and rake commands)

Run `gem install bundler` to install the bundler program.

> Make sure `bundle` is in your PATH,
> `gem` should warn you if it isn't.

Run `bundle install` from within the project directory.

Then run `rake` from within the project directory and install
the generated `compiled/wanikani_breeze_dark.user.css` with Stylus.

## The docker way

It's possible to build (and develop) the project without having the environment on your machine. Simply run `./scripts/compile.sh` from repository root - this will build the CSS styles using a docker container. To continuously work on the style and automatically recompile while making changes run `./scripts/watch.sh`.

<!-- links -->

[stylus_badge]: https://img.shields.io/badge/Install%20directly%20with-Stylus-285959.svg
[pipeline_badge]: https://gitlab.com/valeth/wanikani-breeze-dark/badges/master/pipeline.svg

[usercss]: https://valeth.gitlab.io/wanikani-breeze-dark/wanikani_breeze_dark.user.css
[commits]: https://gitlab.com/valeth/wanikani-breeze-dark/commits/master
