dt.preferences.register(MODULE,        -- script: This is a string used to avoid name collision in preferences (i.e namespace). Set it to something unique, usually the name of the script handling the preference.
                        "preferenceExamplesDirectory",  -- name
                        "directory",                  -- type
                        _("example") .. " directory",         -- label
                        _("example") .. " directory " .. _("tooltip"), -- tooltip
                        "")                           -- default

