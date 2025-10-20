# script template

This template provides a way to lay out a script with places for script elements.

## Replaceable fields

The following fields are replaceable and can be filled using search and replace or automation

### `<name>`

The name of the script, typically the filename without the .lua extension

### `<purpose>`

A quick description of what the script is supposed to do

### `<author_data>`

The script author's name and email address

### `<current_year>`

The current 4 digit year

### `<description>`

The long description of what the script does and how it does it

### `<additional software>`

Any additional software required for the script to run

### `<usage>`

The steps required to actually run the script

## Sections

Organizing the script into sections gives pieces a "home", makes the script more readable for others, and makes maintenance easier

### API CHECK

The API CHECK section checks to make sure the current API version is greater than or equal to the API version required.

```
darktable 1.6.0 was API 2.0.1
darktable 1.6.1 was API 2.0.2
darktable 2.0.0 was API 3.0.0
darktable 2.2.0 was API 4.0.0 (removed the ugly yield functions make scripts incompatible)
darktable 2.4.0 was API 5.0.0 (going to lua 5.3 is a major API bump)
darktable 3.2.0 was API 6.0.0 (removed facebook, flickr, and picasa from types.dt_imageio_storage_module_t)
darktable 3.6.0 was API 7.0.0 (added naming to events, selections, and actions)
darktable 3.8.0 was API 8.0.0 (moved to lua 5.4 and added some events)
darktable 4.2.0 was API 9.0.0 (view toolbox functions and snapshot filename removed)
darktable 4.4.0 was API 9.1.0 (added mimic and dt_lua_image_t changes)
darktable 4.6.0 was API 9.2.0 (added change_timestamp to dt_image_t)
darktable 4.8.0 was API 9.3.0 (added button and box widget enhancements)
darktable 5.0.0 was API 9.4.0 (added group events and uuid)
darktable 5.2.0 was API 9.5.0 (added apply_sidecar to image)
darktable 5.4.0 is  API 9.6.0 (added event querying)
```

### I18N

Translation related functions.  Translation is in the process of moving from the scripts to darktable for the scripts in the lua-scripts repository.  Add on or external scripts may need to specify different translation parameters.

### SCRIPT MANAGER INTEGRATION

Scripts return a metadata block, `script_data`, that provides information for script manager to use in starting, stopping, running the script as well as information about the script.

### CONSTANTS

Constants provide a place to define information in just one place, then use the constant throughout the code.  If the definition changes, then it only has to be updated in one place.

The constant MODULE defaults to the name of the script.  MODULE is used in various code snippets included in this repository so they just work when pasted into the script.

### LOG LEVEL

The default log level as defined in https://docs.darktable.org/lua/development/lua.scripts.api.manual/dtutils.log/log_level/#description

### NAME SPACE

A name space contains the script instead of making it global, preventing one script from interfering with another.  The default name space is the filename of the script.

### GLOBAL VARIABLES

Since the script execution model is event driven in darktable, global variables are sometimes required to preserve and communicate state.  It's recommended that the global variables be kept in a table in the name space.

### PREFERENCES

Register and read preferences

### ALIASES

Aliases are used as another name for something else.  The name `namespace` is aliased to the name space and `namespace` is used in the install module code snippet.  Often the name space is aliased to the first letters of each word in the script name, i.e. `my_script_name` gets aliased to `msn`.

### FUNCTIONS

Where the code goes :-D

### MAIN PROGRAM

Most of the time this is empty unless there is a check for prerequisites such as an external executable.

### USER INTERFACE

Widget code goes here

### DARKTABLE INTEGRATION

Functions to start and stop the script added to the script_data table for returning to script_manager

### EVENTS

Events and handlers used by the script