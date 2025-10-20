-- global variables

local old_collection_count = 0
local disable_collection_check = false

dt.register_event(MODULE, "collection-changed",
  function(event)
    if (#dt.collection ~= old_collection_count) and not disable_collection_check then
      dt.print_log("collection changed")
      old_collection_count = #dt.collection
    else
      dt.print_log("collection didn't change")
    end
  end
)

dt.register_event(MODULE, "pre-import",
  function(event)
    disable_collection_check = true
    dt.print_log("disabled collection check")
  end
)

dt.register_event(MODULE, "post-import-film",
  function(event)
    disable_collection_check = false
    dt.print_log("enabled collection check")
  end
)
