dt.preferences.register(MODULE,        -- script: This is a string used to avoid name collision in preferences (i.e namespace). Set it to something unique, usually the name of the script handling the preference. 
                        "preferenceExamplesFile",  -- name
                        "file",                       -- type
                        _("example") .. " file",              -- label
                        _("example") .. " file " .. _("tooltip"),      -- tooltip
                        "")                           -- default

