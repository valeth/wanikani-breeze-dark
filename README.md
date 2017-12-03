# WaniKani Breeze Dark Theme

[![Install directly with Stylus](https://img.shields.io/badge/Install%20directly%20with-Stylus-285959.svg)](https://gitlab.com/valeth/wanikani-breeze-dark/raw/master/compiled/wanikani_breeze_dark.user.css)
[![GPL Licence](https://badges.frapsoft.com/os/gpl/gpl.svg?v=103)](https://opensource.org/licenses/GPL-3.0/)
[![Code Climate](https://codeclimate.com/github/valeth/wanikani-breeze-dark/badges/gpa.svg)](https://codeclimate.com/github/valeth/wanikani-breeze-dark)
[![build status](https://gitlab.com/valeth/wanikani-breeze-dark/badges/master/build.svg)](https://gitlab.com/valeth/wanikani-breeze-dark/commits/master)

A theme for the WaniKani website using the [KDE Breeze](https://community.kde.org/KDE_Visual_Design_Group/HIG/Color) theme color palette.

Requires the Stylus browser extension.

# How to build it yourself

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
