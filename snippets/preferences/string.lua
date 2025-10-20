dt.preferences.register(MODULE,        -- script: This is a string used to avoid name collision in preferences (i.e namespace). Set it to something unique, usually the name of the script handling the preference.
                        "preferenceExamplesString",  -- name
                        "string",                     -- type
                        _("example") .. " string",            -- label
                        _("example") .. " string " .. _("tooltip"),    -- tooltip
                        "String")                     -- default

