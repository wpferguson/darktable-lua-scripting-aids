dt.register_event(MODULE, "inter-script-communication",
  function(event, sender,receiver, message)

    if receiver == "broadcast" then
      if message == "status" then
        dt.util.message(MODULE, sender, "running")  -- creates an interscript communication event
      end
    elseif receiver == MODULE then
      log.msg(log.debug, "got message from " .. sender .. " to " .. receiver .. " with message " .. message)
      if message == "yield" then
        log.msg(log.debug, "got message " .. message .. " from " .. sender)
        dt.control.sleep(100)
      else
        log.msg(log.warn, "unrecognized message " .. message)
      end
    end
  end
)
