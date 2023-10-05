local pipe_junctions_list=
{   
    data.raw["storage-tank"]["steel-pipe-straight"],
    data.raw["storage-tank"]["steel-pipe-elbow"],
    data.raw["storage-tank"]["steel-pipe-t-junction"]
}

for current_position=1,3 do
    pipe_junctions_list[current_position].fluid_box.base_area=data.raw.pipe["kr-steel-pipe"].fluid_box.base_area
    pipe_junctions_list[current_position].fluid_box.height=data.raw.pipe["kr-steel-pipe"].fluid_box.height
end