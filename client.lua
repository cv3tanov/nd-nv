local NDCore = exports['nd-core']:GetCoreObject()
nv = false 

RegisterNetEvent('nd-nv:toggle')
AddEventHandler('nd-nv:toggle', function()
	local ChangeClothes = true -- true -> Показва маската на лицето | false -> Не показва маската на лицето
	local ped = GetPlayerPed(-1)
		if nv == false then
			nv = true
			NDCore.Functions.Progressbar("nv", "Слагане..", 1000, false, true, {
				disableMovement = false,
				disableCarMovement = true,
				disableMouse = false,
				disableCombat = true,
			}, {}, {}, {}, function()
			end)
			Wait(1100)
			TriggerServerEvent("InteractSound:PlayOnSource", "nv", 0.25)
			SetNightvision(true)
			if ChangeClothes == true then
				TaskPlayAnim(ped, "mp_masks@standard_car@ds@", "put_on_mask", 2.0, 2.0, 800, 51, 0, false, false, false)
				SetPedComponentVariation(ped, 1, 132, 0, 0) -- Каква маска да сложи на лицето
			end
		elseif nv == true then
			NDCore.Functions.Progressbar("nv", "Махане..", 1000, false, true, {
				disableMovement = false,
				disableCarMovement = true,
				disableMouse = false,
				disableCombat = true,
			}, {}, {}, {}, function()
			end)
			Wait(1100)
			SetNightvision(false)
			nv = false
			if ChangeClothes == true then
			        TaskPlayAnim(ped, "mp_masks@standard_car@ds@", "put_on_mask", 2.0, 2.0, 800, 51, 0, false, false, false)
			        SetPedComponentVariation(ped, 1, 0, 0, 0)  -- Без маска
	        end
        end
end)

