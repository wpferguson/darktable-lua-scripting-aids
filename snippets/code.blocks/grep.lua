local function grep(file, pattern)

  local result = {}

  if dt.configuration.running_os == "windows" then
    -- use find to get the matches
    local command = "\\windows\\system32\\find.exe " .. "\"" .. pattern .. "\"" .. " " .. file
    local f = dtsys.io_popen(command)
    local output = f:read("all")
    f:close()
    -- strip out the first line
    result = du.split(output, "\n")
    table.remove(result, 1)
  else
    -- use grep and just return the answers
    local command = "grep " .. pattern .. " " .. file
    local f = dtsys.io_popen(command)
    local output = f:read("all")
    f:close()
    result = du.split(output, "\n")
  end
  return result
end
