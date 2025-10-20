# event registration and handling

How to register and handle events  More documentation is available at https://docs.darktable.org/lua/development/lua.api.manual/events 

## collection-changed

This event fires when the collection changes.  The `collection-changed` event fires when the collection module rule set changes, so the number of images may not change.  Look at `code.blocks/collection_changed_howto.lua` for an example.

## darkroom-image-history-changed

This event fires when the image history changes while in darkroom mode

## darkroom-image-loaded

This event fires when an image completes loading into darkroom

## exit

This event fires when darktable is exiting

## global_toolbox-grouping_toggle

This event fires when the grouping toggle changes in lighttable

## global_toolbox-overlay_toggle

This event fires when the overlay toggle changes in lighttable

## inter-script-communication

This event fires when a message is sent to a script

## intermediate-export-image

This event fires each time an image is exported, after processing but before it is stored

## mouse-over-image-changed

This event fires when the image under the mouse changes

## pixelpipe-processing-complete

This event fires when a pixelpipe processing run completes

## post-import-film

This event fires after a film roll is imported

## post-import-image

This event fires each time an image is imported

## pre-import-image

This event firest prior to each image being imported

## selection-changed

This event fires when the selection changes

## shortcut

This event creates a shortcut that can have a key combination assigned to it.  The module name is the default name of the shortcut.  Shortcut names must be unique. If one script has multiple shortcuts the name can be modified in the declaration with `MODULE .. "name modified"` to make it unique.

## view-changed

This event fires when the view changes