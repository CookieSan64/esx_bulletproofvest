ESX = nil

Citizen.CreateThread(function()
  while ESX == nil do
    TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
    Citizen.Wait(0)
  end
end)

local UseBulletproofVest = false

------------- Gilet pare-balles
RegisterNetEvent('esx_bulletproofvest:setbulletproofvest')
AddEventHandler('esx_bulletproofvest:setbulletproofvest', function(itemName)
  local playerPed = GetPlayerPed(-1)
  local armorValue = 100 -- Niveau d'armure à appliquer

  TriggerEvent('skinchanger:getSkin', function(skin)
    -- Charger la tenue spécifique au joueur en fonction de l'item utilisé
    if itemName == 'bulletproofvest_fbi_male' then
      local clothesSkin = {
          ['bproof_1'] = 10,
          ['bproof_2'] = 0,
      }
      TriggerEvent('skinchanger:loadClothes', skin, clothesSkin)
    elseif itemName == 'bulletproofvest_fbi_female' then
      local clothesSkin = {
          ['bproof_1'] = 20,
          ['bproof_2'] = 9,
      }
      TriggerEvent('skinchanger:loadClothes', skin, clothesSkin)
    elseif itemName == 'bulletproofvest_police_male' then
      local clothesSkin = {
          ['bproof_1'] = 10,
          ['bproof_2'] = 0,
      }
      TriggerEvent('skinchanger:loadClothes', skin, clothesSkin)
    elseif itemName == 'bulletproofvest_police_female' then
      local clothesSkin = {
          ['bproof_1'] = 20,
          ['bproof_2'] = 9,
      }
      TriggerEvent('skinchanger:loadClothes', skin, clothesSkin)
    elseif itemName == 'bulletproofvest_sheriff_male' then
      local clothesSkin = {
          ['bproof_1'] = 10,
          ['bproof_2'] = 0,
      }
      TriggerEvent('skinchanger:loadClothes', skin, clothesSkin)
    elseif itemName == 'bulletproofvest_sheriff_female' then
      local clothesSkin = {
          ['bproof_1'] = 20,
          ['bproof_2'] = 9,
      }
      TriggerEvent('skinchanger:loadClothes', skin, clothesSkin)
    elseif itemName == 'bulletproofvest_civil_male' then
      local clothesSkin = {
          ['bproof_1'] = 10,
          ['bproof_2'] = 0,
      }
      TriggerEvent('skinchanger:loadClothes', skin, clothesSkin)
    elseif itemName == 'bulletproofvest_civil_female' then
      local clothesSkin = {
          ['bproof_1'] = 20,
          ['bproof_2'] = 9,
      }
      TriggerEvent('skinchanger:loadClothes', skin, clothesSkin)
    elseif itemName == 'bulletproofvest_cartel_male' then
      local clothesSkin = {
          ['bproof_1'] = 10,
          ['bproof_2'] = 0,
      }
      TriggerEvent('skinchanger:loadClothes', skin, clothesSkin)
    elseif itemName == 'bulletproofvest_cartel_female' then
      local clothesSkin = {
          ['bproof_1'] = 20,
          ['bproof_2'] = 9,
      }
      TriggerEvent('skinchanger:loadClothes', skin, clothesSkin)
    end

    -- Appliquer l'armure au joueur
    SetPedArmour(playerPed, armorValue)

    -- Supprimer l'item du stock du joueur
    local item = ESX.GetPlayerData().inventory[itemName]
    if item.count > 0 then
      TriggerServerEvent('esx_bulletproofvest:removeItem', item.name, 1)
    end

    UseBulletproofVest = not UseBulletproofVest
  end)
end)