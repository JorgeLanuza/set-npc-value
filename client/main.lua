-- Valores de 0 a 2, de menor a mayor. ( 0.0 nada | 1.0 normal | 2.0 más ). Lo mismo para ambos ajustes.
local config = {
  pedFrecuency = 2,
  trafficFrecuency = 2,
}

Citizen.CreateThread(function()
  while true do
    Citizen.wait(0)
    -- Ped
    SetPedDensityMultiplierThisFrame(config.pedFrecuency)
    SetScenarioPedDensityMultiplierThisFrame(config.pedFrecuency)
    -- Traffic
    SetRandomVehicleDensityMultiplierThisFrame(config.trafficFrecuency)
    SetParkedVehicleDensityMultiplierThisFrame(config.trafficFrecuency)
    SetVehiceDensityMultiplierThisFrame(config.trafficFrecuency)
  end
)