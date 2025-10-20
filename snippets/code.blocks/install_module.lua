-- goes in functions

local function install_module()
  if not namespace.module_installed then
    dt.register_lib(
      MODULE,     -- Module name
      script_data.metadata.name,     -- Visible name
      true,                -- expandable
      false,               -- resetable
      {[dt.gui.views.lighttable] = {"DT_UI_CONTAINER_PANEL_LEFT_CENTER", 0}},   -- containers
      namespace.main_widget,
      nil,-- view_enter
      nil -- view_leave
    )
    namespace.module_installed = true
  end
end

-- goes in main program

if dt.gui.current_view().id == "lighttable" then
  install_module()
else
  if not namespace.event_registered then
    dt.register_event(MODULE, "view-changed",
      function(event, old_view, new_view)
        if new_view.name == "lighttable" and old_view.name == "darkroom" then
          install_module()
         end
      end
    )
    namespace.event_registered = true
  end
end

-- goes in darktable integration

local function destroy()
  dt.gui.libs[MODULE].visible = false

  if namespace.event_registered then
    dt.destroy_event(MODULE, "view-changed")
  end
  
  return
end

local function restart()
  dt.gui.libs[MODULE].visible = true

  return
end

script_data.restart = restart
script_data.destroy_method = "hide"
script_data.show = restart
