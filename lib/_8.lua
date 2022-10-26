local a = {}
function a:GetExploit()
	if is_sirhurt_closure then
		return "Sirhurt"
	elseif pebc_execute then
		return "ProtoSmasher"
	elseif syn then
		return "Synapse X"
	elseif secure_load then
		return "Sentinel"
	elseif KRNL_LOADED and not is_oxygen_function() then
		return "Krnl"
	elseif getexecutorname() and not fluxus then
		return "Scriptware"
	elseif is_oxygen_function() then
		return "Oxygen U"
	elseif identifyexecutor() then
		return "Arceus X"
	elseif WRD then
		return "WeAreDevs Api"
	elseif fluxus then
		return "Fluxus"
	elseif IsElectron then
		return "Electron"
	else
		return "None"
	end
end
return a
