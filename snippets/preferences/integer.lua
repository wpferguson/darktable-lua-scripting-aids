dt.preferences.register(MODULE,        -- script: This is a string used to avoid name collision in preferences (i.e namespace). Set it to something unique, usually the name of the script handling the preference. 
                        "preferenceExamplesInteger",  -- name
                        "integer",                    -- type
                        _("example") .. " integer",           -- label
                        _("example") .. " integer " .. _("tooltip"),   -- tooltip
                        2,                            -- default
                        1,                            -- min
                        99)                           -- max

