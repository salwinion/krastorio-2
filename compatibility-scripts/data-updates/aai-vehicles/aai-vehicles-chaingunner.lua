if mods["aai-vehicles-chaingunner"] and data.raw["car"]["vehicle-chaingunner"] then
  data.raw["car"]["vehicle-chaingunner"].equipment_grid = "kr-car-grid"
  if mods["aai-industry"] then
    krastorio.technologies.addPrerequisite("basic-vehicles", "fuel-processing")
  else
    krastorio.technologies.addPrerequisite("basic-vehicles", "kr-fuel")
  end
end
