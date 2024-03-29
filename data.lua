if not mods["Krastorio2"] and not mods["k2-steel-pipes"] then
    error("Krastorio2 or Steel pipes must be installed. Disable this mod or install a compatible mod.")
end

require("prototypes.entity.entities")
require("prototypes.item")
require("prototypes.recipe")
require("prototypes.technology")


local pipe_junctions_list=
{   
    data.raw["storage-tank"]["pipe-straight"],
    data.raw["storage-tank"]["pipe-elbow"],
    data.raw["storage-tank"]["pipe-t-junction"],
    data.raw["storage-tank"]["steel-pipe-straight"],
    data.raw["storage-tank"]["steel-pipe-elbow"],
    data.raw["storage-tank"]["steel-pipe-t-junction"]
}

if (settings.startup["se-flow-bridge-is-pipe-arrows-disabled"] and settings.startup["se-flow-bridge-is-pipe-arrows-disabled"].value) or (settings.startup["k2-flow-bridge-is-pipe-arrows-disabled"] and settings.startup["k2-flow-bridge-is-pipe-arrows-disabled"].value) then
    for key,value in ipairs(pipe_junctions_list) do
        if not value.fluid_box.hide_connection_info then
            table.insert(value.fluid_box,hide_connection_info)
        end
        value.fluid_box.hide_connection_info=true
    end
end

if settings.startup["flow-control-revert-to-normal-pipe"].value == false then
    data.raw["storage-tank"]["steel-pipe-elbow"].minable.result="steel-pipe-elbow"
    data.raw["storage-tank"]["steel-pipe-t-junction"].minable.result="steel-pipe-t-junction"
    data.raw["storage-tank"]["steel-pipe-straight"].minable.result="steel-pipe-straight"
end