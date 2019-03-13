local ModSupport = {}

ModSupport.circuit = 'electronic-circuit'
if data.raw.recipe['basic-electronic-circuit'] then
    ModSupport.circuit = 'basic-electronic-circuit'
end

return ModSupport
