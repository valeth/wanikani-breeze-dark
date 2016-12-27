# WaniKani Breeze Dark Theme

[![GPL Licence](https://badges.frapsoft.com/os/gpl/gpl.svg?v=103)](https://opensource.org/licenses/GPL-3.0/)
[![Code Climate](https://codeclimate.com/github/valeth/wanikani-breeze-dark/badges/gpa.svg)](https://codeclimate.com/github/valeth/wanikani-breeze-dark)
[![build status](https://gitlab.com/valeth/wanikani-breeze-dark/badges/master/build.svg)](https://gitlab.com/valeth/wanikani-breeze-dark/commits/master)

A [Stylish](https://addons.mozilla.org/en-US/firefox/addon/stylish) theme for the WaniKani website
using the [KDE Breeze](https://community.kde.org/KDE_Visual_Design_Group/HIG/Color) theme color palette.


# How to install

Install the Stylish browser addon.

- [Mozilla Firefox](https://addons.mozilla.org/en-US/firefox/addon/stylish/)
- [Google Chrome](https://chrome.google.com/webstore/detail/stylish/fjnbnpbmkenffdnngjfgmeleoegfcffe?utm_source=chrome-ntp-icon)

Then install the theme from [here](https://userstyles.org/styles/135572/wanikani-breeze-dark-beta)

> If you are using Chromium/Chrome use the Mozilla format import.


# How to build

> Only required if you want to have the latest development version.

You need:
- git (obviously)
- ruby (for the gem and rake commands)

Clone this repository and switch to the `dev` branch.

Run `gem install bundler` to install the bundler program.

> Make sure `bundle` is in your PATH,
> `gem` should warn you if it isn't.

Run `bundle install` from within the project directory.

Then run `rake` from within the project directory and copy
the content of the generated `out.css` into a new Stylish theme.

If you are using a Linux OS and have `xsel` installed
you can simply run `rake copy` to build the project and copy the
file content to your clipboard.

> paste with middle mouse click
