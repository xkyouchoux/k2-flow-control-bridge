local pipe_subgroup="energy-pipe-distribution"

if settings.startup["flow-control-new-group"].value then
  pipe_subgroup="pipe-distribution"
end

data:extend({

  {
    name="steel-pipe-elbow",
    icon="__k2-flow-control-bridge__/graphics/icon/steel-pipe-elbow.png",
    icon_size=64,
    place_result="steel-pipe-elbow",
    stack_size=50,
    subgroup=pipe_subgroup,
    order="b[pipe]-a[pipe]j",
    type="item"
  },

  { 
    name="steel-pipe-straight",
    icon="__k2-flow-control-bridge__/graphics/icon/steel-pipe-straight.png",
    icon_size=64,
    place_result="steel-pipe-straight",
    stack_size=50,
    subgroup=pipe_subgroup,
    order="b[pipe]-a[pipe]k",
    type="item"
  },

  {
    name="steel-pipe-t-junction",
    icon="__k2-flow-control-bridge__/graphics/icon/steel-pipe-t-junction.png",
    icon_size=64,
    place_result="steel-pipe-t-junction",
    stack_size=50,
    subgroup=pipe_subgroup,
    order="b[pipe]-a[pipe]i",
    type="item"
  },
    
})
