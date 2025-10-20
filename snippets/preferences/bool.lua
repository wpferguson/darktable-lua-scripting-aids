dt.preferences.register(MODULE,        -- script: This is a string used to avoid name collision in preferences (i.e namespace). Set it to something unique, usually the name of the script handling the preference. 
                        "preferenceExamplesBool",  -- name
                        "bool",                       -- type
                        _("example") .. " boolean",           -- label
                        _("example") .. " boolean " .. _("tooltip"),   -- tooltip
                        true)                         -- default

