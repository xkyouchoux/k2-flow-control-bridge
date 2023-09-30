if not mods["se-flow-control-bridge"] then
    data:extend({
        {
            name="k2-flow-bridge-is-pipe-arrows-disabled",
            type="bool-setting",
            setting_type="startup",
            default_value=true
        }
    })
end