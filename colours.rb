require 'yaml'

module Colours
    COLOURS = YAML.load_file('./colours.yml')

    TEXT        = COLOURS[:primary][:paper_white]
    BACKGROUND  = COLOURS[:primary][:charcoal_grey]
    SUBSECTION  = COLOURS[:primary][:shade_black]
    LIST_ITEM   = COLOURS[:primary][:plasma_blue]
    LIST_HEAD   = COLOURS[:secondary][:icon_blue]

    INCORRECT   = COLOURS[:secondary][:danger_red]
    CORRECT     = COLOURS[:secondary][:icon_green]

    RADICAL     = COLOURS[:secondary][:icon_blue]
    KANJI       = COLOURS[:secondary][:icon_yellow]
    VOCABULARY  = COLOURS[:secondary][:icon_green]

    APPRENTICE  = COLOURS[:secondary][:icon_blue]
    GURU        = COLOURS[:secondary][:mellow_turquoise]
    MASTER      = COLOURS[:secondary][:beware_orange]
    ENLIGHTENED = COLOURS[:secondary][:sunbeam_yellow]
    BURNED      = COLOURS[:primary][:shade_black]
end
