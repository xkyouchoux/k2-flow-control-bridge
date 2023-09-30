function insert_elements(start_table,elements)
  for key,value in ipairs(elements) do
    table.insert(start_table,value)
  end
end

insert_elements
(
  data.raw["technology"]["kr-steel-fluid-handling"].effects,
  {
    {type="unlock-recipe",recipe="steel-pipe-straight"},
    {type="unlock-recipe",recipe="steel-pipe-t-junction"},
    {type="unlock-recipe",recipe="steel-pipe-elbow"}
  }
)