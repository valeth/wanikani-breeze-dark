# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

*no notable changes*

## [1.4.2] - 2023-03-30

## Fixed

- applied hint style more broadly to affect lessons
- applied character composition style more broadly to affect other views
- fixed tooltip styles for inline vocab/kanji/radical/reading/meaning
- restored styling of the items in the "last 10" section
- set SRS change's background to make it readable with color background
- fixed WKOF menu styling during reviews
- fixed styling of the dashboard alert
- fixed footer image on item/level info pages
- fixed navigation bar on item/level info pages
- made it much clearer that items are locked
- restored styling of the legend in item/level info pages
- restored styling of level info sections and progress bars

## [1.4.1] - 2023-03-28

## Fixed

- fixed ability to configure review/lesson item background
- restored styling of navigation bar on lessons page
- restored styling of info sections on lessons page
- restored styling of queue on lessons page
- restored styling of kanji composition on lessons page
- restored styling of patterns of use (affects multiple pages)
- restored styling of user synonyms (affects multiple pages)
- restored styling of loading view on review page
- restored styling of character grid (affects multiple pages)
- fixed styling of keyboard menu and chat button

## [1.4.0] - 2023-03-27

## Fixed

- restored styles of reading/meaning on review page
- restored styling of input field on review page
- restored styling of tool buttons under input on review page
- restored styling of the kana chart on review page
- fixed arrow pointing to additional info on review page
- restored styling of character view and header on review page
- restored styling of hint popup on review page
- reapplied SRS style on the new elements
- improved styling of submit inputs
- improved styling of hint sections in item info
- restored styling of radicals composing a kanji
- minor color/shadow improvements in item info sections

## [1.3.18] - 2022-09-04

### Added

- basic support for [CIDWWA](https://community.wanikani.com/t/for-userscript-authors-cidwwa-code-i-dont-want-to-write-again/56288)
- configured color scheme to dark (for browsers to better understand and adjust themselves; thanks [@Hubbit200](https://community.wanikani.com/u/Hubbit200))

### Fixed

- styling of vocab's practical use tabs to match item info
- scoping of the kanji/radical/vocab icon in lessons (no longer applies shadow to audio buttons)
- global `text-black` style (this should fix something for radical lessons; thanks [Rrwrex](https://community.wanikani.com/u/Rrwrex))

## [1.3.17] - 2022-03-15

### Fixed

- audio buttons in review and extra study now show up properly (color and visibility fix)
- top bar with title and buttons is now visible in extra study
- hiragana now has a readable text color in kana chart in extra study and review
- improved visibility of the question marks of the 2 new buttos starting extra study sessions
- inverted the colors of the extra study image on the dashboard

## [1.3.16] - 2022-01-14

### Fixed

- fixed styling of user synonyms
- decluttered style for "patterns of use" tabs
- fixed answer field background in self-study quiz

## [1.3.15] - 2021-10-12

### Fixed

- sections on subscription page have the correct background and text color again
- inverted colors of image showing no upcoming reviews
- background and text color of forum section header
- restored avatar on profile page
- minus button visibility in reorder ultimate 2

## [1.3.14] - 2021-01-26

### Added

- basic support for Level Duration 2.0 script
- proper item coloring for self-study quiz sessions

### Changed

- improved highlighter items' border and background in Dashboard Progress Plus script (thanks [@meme8383](https://community.wanikani.com/u/meme8383))

### Fixed

- button-like styling for download links in item inspector's settings

## [1.3.13] - 2020-11-22

### Changed

- dashboard item tables now use item color coding as their background to make it more prominent
- colorcoded background of radical/kanji/vocab navbar menus - just like WK does now

### Fixed

- scoping of Item Inspector's filter settings' styles to make them work with previous and latest version
- text color of the total number of reviews in ultimate timeline

## [1.3.12] - 2020-11-15

### Added

- CSS variables for commonly used colors
- styles for Item Inspector's filters settings
- styles for WKOF's script menu on review an lesson pages

### Fixed

- background colors of menu's, submenus and their arrows

## [1.3.11] - 2020-11-01

### Added

- Styles for checkboxes - they now follow screenshots from KDE Breeze guidelines

### Fixed

- Footer styling on 'Profile' and 'Subscription' pages
- Red buttons have a color that's a little easier on the eyes on 'API tokens' and 'Danger zone' pages
- Colors in tables on 'Subscription' page
- Text color in orange elements on 'Subscription' page
- 'Summary' and 'Payment details' sections on 'Billing' page changed to dark

## [1.3.10] - 2020-10-31

### Added

- Styled lines in WKOF settings dialogs

### Fixed

- Spacing of the WKOF fieldset title - other view elements shouldn't ovelap with it anymore
- Coloring of WKOF settings sections
- Colors of radicals, kanji and vocabulary in the dashboard sections for unlocked, critical and burned items

## [1.3.9] - 2020-10-26

### Added

- Styled fieldsets in WKOF settings dialogs
- Styled tab headers in WKOF settings dialogs

### Fixed

- Support for stroke order script
- Colors in Dashboard Progress Plus popovers

### Removed

- Support for old (and broken at this point) lesson reorder script - this fixes styles for Reorder Ultimate 2

## [1.3.8] - 2020-10-26

### Fixed

- Position of lessons progress below lesson content
- Titlebar of WKOF's setting dialog
- Locked item indication on dashboard
- Shadow issues with radical images

## [1.3.7] - 2020-10-06

### Fixed

- Captions below kanji examples in radical lessons

## [1.3.6] - 2020-03-10

### Fixed

- Word spacing in lesson quiz

## [1.3.5] - 2020-03-10

### Fixed

- Sitemap background color is now dark
- Text color on settings pages are now lighter
- Links in nav menu no longer use default link styling
- Adjusted dashboard style for new layout

## [1.3.4] - 2020-01-05

### Added

- Styling for new progress bar

### Changed

- Navbar now has its old shadow back

### Fixed

- Progress entries now have correct text color

## [1.3.3] - 2020-01-02

### Changed

- Use GitLab pages for automatic CSS build

### Fixed

- Global header background color

## [1.3.2] - 2018-12-08

### Fixed

- Alert message styling

## [1.3.1] - 2018-10-27

### Fixed

- Table width for PSC userscript

## [1.3.0] - 2018-10-27

### Added

- Support for Phon. Sem. Composition userscript

## [1.2.4] - 2018-10-27

### Fixed

- Batch item tab within lessons

## [1.2.3] - 2018-10-27

### Added

- Support for "Vocabulary for Wanikani" userscript

## [1.2.2] - 2018-06-07

### Changed

- Tweak style for Ultimate Timeline userscript

### Fixed

- Character list and grid styling

## [1.2.1] - 2018-05-22

### Changed

- Update style for Ultimate Timeline UserScript

### Fixed

- WaniKani Ultimate Timeline popup background

## [1.2.0] - 2018-05-15

### Added

- Partial styling for WKOF
- Support for WakiKani Leech Training userscript

### Fixed

- Position progress bar for leech trainer
- Make some dropdown-menu styles more specific

## [1.1.0] - 2017-12-03

### Added

- Usercss for Stylus
- Support for Stroke Order Diagram userscript
- Config option for burned color
- WK Anti-burnout userscript styling
- Style icons and time in alert messages
- Styling for newbie checklist

### Changed

- Update WaniKani lesson cap userscript style
- Update lesson cap userscript styles
- Update alert style
- Update dashboard footer

### Fixed

- Only display footer image on dashboard
- Alert message on reviews page
- Footer image positioning
- Highlight text color on lessons

## [1.0.0] - 2017-07-16

### Added

- Apply link styling
- Support for override script
- Styling for login/signup page
- Background color options for reading/meaning in reviews
- Support for custom Radical/Kanji/Vocabulary colors
- Support for the WaniKani Dashboard Progress Plus userscript
- Support for the WaniKani Reorder Ultimate 2 userscript

### Removed

- General radical id selector
- Text shadows from tables on dashboard

### Changed

- Make the character background in reviews changeable
- Give some character items a more "iconic" look
- Make sure "dangerous" buttons are marked
- Make background for progress bar darker
- Add darker header to item lists and forums on dashboard and in review/lesson summary
- Animations and shadows for button and input field
- Adjust spacing and coloring for Ultimate Timeline graph
- Make info popups on reviews summary page better readable

### Fixed

- Settings page styling to work with new layout
- Styling for related items in lesson quiz
- Layering for lesson quiz sheets
- Styling for lesson/quiz ready screens
- Styling for textarea
- Coloring of user synonym input
- Position of batch items in lessons (bottom list)
- Colors for lessons
- Colors for total item numbers on review summary
- Spacing between subsections on dashboard
- Styling for Reorder Ultimate userscript in lessons
- Correct/incorrect highlighting in reviews

## [0.6.0] - 2016-12-24

*no notable changes*

## [0.1.0] - 2016-11-24

*no notable changes*

<!-- links -->

[Unreleased]: https://gitlab.com/valeth/wanikani-breeze-dark/tree/master
[1.4.2]: https://gitlab.com/valeth/wanikani-breeze-dark/tree/1.4.2
[1.4.1]: https://gitlab.com/valeth/wanikani-breeze-dark/tree/1.4.1
[1.4.0]: https://gitlab.com/valeth/wanikani-breeze-dark/tree/1.4.0
[1.3.18]: https://gitlab.com/valeth/wanikani-breeze-dark/tree/1.3.18
[1.3.17]: https://gitlab.com/valeth/wanikani-breeze-dark/tree/1.3.17
[1.3.16]: https://gitlab.com/valeth/wanikani-breeze-dark/tree/1.3.16
[1.3.15]: https://gitlab.com/valeth/wanikani-breeze-dark/tree/1.3.15
[1.3.14]: https://gitlab.com/valeth/wanikani-breeze-dark/tree/1.3.14
[1.3.13]: https://gitlab.com/valeth/wanikani-breeze-dark/tree/1.3.13
[1.3.12]: https://gitlab.com/valeth/wanikani-breeze-dark/tree/1.3.12
[1.3.11]: https://gitlab.com/valeth/wanikani-breeze-dark/tree/1.3.11
[1.3.10]: https://gitlab.com/valeth/wanikani-breeze-dark/tree/1.3.10
[1.3.9]: https://gitlab.com/valeth/wanikani-breeze-dark/tree/1.3.9
[1.3.8]: https://gitlab.com/valeth/wanikani-breeze-dark/tree/1.3.8
[1.3.7]: https://gitlab.com/valeth/wanikani-breeze-dark/tree/1.3.7
[1.3.6]: https://gitlab.com/valeth/wanikani-breeze-dark/tree/1.3.6
[1.3.5]: https://gitlab.com/valeth/wanikani-breeze-dark/tree/1.3.5
[1.3.4]: https://gitlab.com/valeth/wanikani-breeze-dark/tree/1.3.4
[1.3.3]: https://gitlab.com/valeth/wanikani-breeze-dark/tree/1.3.3
[1.3.2]: https://gitlab.com/valeth/wanikani-breeze-dark/tree/1.3.2
[1.3.1]: https://gitlab.com/valeth/wanikani-breeze-dark/tree/1.3.1
[1.3.0]: https://gitlab.com/valeth/wanikani-breeze-dark/tree/1.3.0
[1.2.4]: https://gitlab.com/valeth/wanikani-breeze-dark/tree/1.2.4
[1.2.3]: https://gitlab.com/valeth/wanikani-breeze-dark/tree/1.2.3
[1.2.2]: https://gitlab.com/valeth/wanikani-breeze-dark/tree/1.2.2
[1.2.1]: https://gitlab.com/valeth/wanikani-breeze-dark/tree/1.2.1
[1.2.0]: https://gitlab.com/valeth/wanikani-breeze-dark/tree/1.2.0
[1.1.0]: https://gitlab.com/valeth/wanikani-breeze-dark/tree/1.1.0
[1.0.0]: https://gitlab.com/valeth/wanikani-breeze-dark/tree/1.0.0
[0.6.0]: https://gitlab.com/valeth/wanikani-breeze-dark/tree/0.6.0
[0.1.0]: https://gitlab.com/valeth/wanikani-breeze-dark/tree/0.1.0
