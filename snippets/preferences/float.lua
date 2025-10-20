dt.preferences.register(MODULE,        -- script: This is a string used to avoid name collision in preferences (i.e namespace). Set it to something unique, usually the name of the script handling the preference. 
                        "preferenceExamplesFloat",  -- name
                        "float",                      -- type
                        _("example") .. " float",             -- label
                        _("example") .. " float " .. _("tooltip"),     -- tooltip
                        1.3,                          -- default
                        1,                            -- min
                        99,                           -- max
                        0.5)                          -- step

