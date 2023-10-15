local steel_pipe_texture_location = mods["Krastorio2"] and "__Krastorio2Assets__/entities/steel-pipe/" or "__k2-steel-pipes__/graphics/steel-pipe/"

--  Functions
function define_pipe_sprite(filename)
  sprite=
  {
    filename=steel_pipe_texture_location .. filename,
    priority="extra-high",
    width=128,
    height=128,
    scale=0.5
  }
  return sprite
end


--  Initialization

--  Straight Space Pipe
local steel_pipe_straight=util.table.deepcopy(data.raw["storage-tank"]["pipe-elbow"])
steel_pipe_straight.name="steel-pipe-straight"
steel_pipe_straight.icon="__k2-flow-control-bridge__/graphics/icon/steel-pipe-straight.png"
steel_pipe_straight.max_health=200
steel_pipe_straight.selection_box={{-0.35,-0.5},{0.35,0.5}}
steel_pipe_straight.minable={mining_time=0.1,result="kr-steel-pipe"}
steel_pipe_straight.placeable_by={item="kr-steel-pipe",count=1}
steel_pipe_straight.corpse="small-remnants"
steel_pipe_straight.fluid_box.pipe_connections=
{
  {position={0,-1}},
  {position={0,1}}
}
steel_pipe_straight.pictures.picture=
{
  north=define_pipe_sprite("hr-steel-pipe-straight-vertical.png"),
  south=define_pipe_sprite("hr-steel-pipe-straight-vertical.png"),
  east=define_pipe_sprite("hr-steel-pipe-straight-horizontal.png"),
  west=define_pipe_sprite("hr-steel-pipe-straight-horizontal.png")
}

--  T-Junction Space Pipe
local steel_pipe_t_junction=util.table.deepcopy(data.raw["storage-tank"]["pipe-elbow"])
steel_pipe_t_junction.name="steel-pipe-t-junction"
steel_pipe_t_junction.icon="__k2-flow-control-bridge__/graphics/icon/steel-pipe-t-junction.png"
steel_pipe_t_junction.max_health=200
steel_pipe_t_junction.selection_box={{-0.5,-0.35},{0.5,0.5}}
steel_pipe_t_junction.minable={mining_time=0.1,result="kr-steel-pipe"}
steel_pipe_t_junction.placeable_by={item="kr-steel-pipe",count=1}
steel_pipe_t_junction.corpse="small-remnants"
steel_pipe_t_junction.fluid_box.pipe_connections=
{
  {position={1,0}},
  {position={0,1}},
  {position={-1,0}}
}
steel_pipe_t_junction.pictures.picture=
{
  north=define_pipe_sprite("hr-steel-pipe-t-down.png"), 
  east=define_pipe_sprite("hr-steel-pipe-t-left.png"),
  south=define_pipe_sprite("hr-steel-pipe-t-up.png"), 
  west=define_pipe_sprite("hr-steel-pipe-t-right.png") 
}

--  Elbow Space Pipe
local steel_pipe_elbow=util.table.deepcopy(data.raw["storage-tank"]["pipe-elbow"])
steel_pipe_elbow.name="steel-pipe-elbow"
steel_pipe_elbow.icon="__k2-flow-control-bridge__/graphics/icon/steel-pipe-elbow.png"
steel_pipe_elbow.max_health=200
steel_pipe_elbow.selection_box={{-0.5,-0.35},{0.5,0.5}}
steel_pipe_elbow.minable={mining_time=0.1,result="kr-steel-pipe"}
steel_pipe_elbow.placeable_by={item="kr-steel-pipe",count=1}
steel_pipe_elbow.corpse="small-remnants"
steel_pipe_elbow.fluid_box.pipe_connections=
{
  {position={1,0}},
  {position={0,1}}
}
steel_pipe_elbow.pictures.picture=
{
  north=define_pipe_sprite("hr-steel-pipe-corner-down-right.png"),
  east=define_pipe_sprite("hr-steel-pipe-corner-down-left.png"),
  south=define_pipe_sprite("hr-steel-pipe-corner-up-left.png"),
  west=define_pipe_sprite("hr-steel-pipe-corner-up-right.png")
}


data:extend({--  Entities
  steel_pipe_elbow,
  steel_pipe_t_junction, 
  steel_pipe_straight 
})