dt.preferences.register(MODULE,        -- script: This is a string used to avoid name collision in preferences (i.e namespace). Set it to something unique, usually the name of the script handling the preference.
                        "preferenceExamplesEnum",  -- name
                        "enum",                       -- type
                        _("example") .. " enum",              -- label
                        _("example") .. " enum " .. _("tooltip"),      -- tooltip
                        "Enum 1",                     -- default
                        "Enum 1", "Enum 2")           -- values

