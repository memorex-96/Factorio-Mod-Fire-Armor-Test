
local fireArmor = table.deepcopy(data.raw["armor"]["heavy-armor"]) --call the armor table into fireArmor variable

fireArmor.name = "fire-armor"
fireArmor.icons = {
  {
    icon = fireArmor.icon, 
    icon_size = fireArmor.icon_size, 
    tint = {r=1,g=0,b=0,a=0.3}
  },
} 

fireArmor.resistances = {
  {
    type = "physical", 
    decrease = 6, 
    percent = 10
  },
  {
    type  = "explosion", 
    decrease = 10, 
    percent = 30
  },
  {
    type = "acid", 
    decrease = 5, 
    percent = 30 
  }, 
  {
    type = "fire", 
    decrease = 5, 
    percent = 100
  } 
} 

local recipe = {
  type = "recipe", 
  name = "fire-armor", 
  enabled = true, 
  energy_required = 8, 
  ingredients = {
    {type = "item", name = "copper-plate", amount = 200},
    {type = "item", name = "steel-plate", amount = 50}
  }, 
  results = {{type = "item", name = "fire-armor", amount = 1}}
} 

data:extend{fireArmor, recipe}

