ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

-- Supprimer l'item du stock du joueur
ESX.RegisterUsableItem('bulletproofvest_fbi_male', function(source)
  TriggerClientEvent('esx_bulletproofvest:setbulletproofvest', source, 'bulletproofvest_fbi_male')
end)

ESX.RegisterUsableItem('bulletproofvest_fbi_female', function(source)
  TriggerClientEvent('esx_bulletproofvest:setbulletproofvest', source, 'bulletproofvest_fbi_female')
end)

ESX.RegisterUsableItem('bulletproofvest_police_male', function(source)
  TriggerClientEvent('esx_bulletproofvest:setbulletproofvest', source, 'bulletproofvest_police_male')
end)

ESX.RegisterUsableItem('bulletproofvest_police_female', function(source)
  TriggerClientEvent('esx_bulletproofvest:setbulletproofvest', source, 'bulletproofvest_police_female')
end)

ESX.RegisterUsableItem('bulletproofvest_sheriff_male', function(source)
  TriggerClientEvent('esx_bulletproofvest:setbulletproofvest', source, 'bulletproofvest_sheriff_male')
end)

ESX.RegisterUsableItem('bulletproofvest_sheriff_female', function(source)
  TriggerClientEvent('esx_bulletproofvest:setbulletproofvest', source, 'bulletproofvest_sheriff_female')
end)

ESX.RegisterUsableItem('bulletproofvest_civil_male', function(source)
  TriggerClientEvent('esx_bulletproofvest:setbulletproofvest', source, 'bulletproofvest_civil_male')
end)

ESX.RegisterUsableItem('bulletproofvest_civil_female', function(source)
  TriggerClientEvent('esx_bulletproofvest:setbulletproofvest', source, 'bulletproofvest_civil_female')
end)

ESX.RegisterUsableItem('bulletproofvest_cartel_male', function(source)
  TriggerClientEvent('esx_bulletproofvest:setbulletproofvest', source, 'bulletproofvest_cartel_male')
end)

ESX.RegisterUsableItem('bulletproofvest_cartel_female', function(source)
  TriggerClientEvent('esx_bulletproofvest:setbulletproofvest', source, 'bulletproofvest_cartel_female')
end)