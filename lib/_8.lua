local a = {}
function a:GetExploit()
	local api = is_sirhurt_closure and "Sirhurt" or pebc_execute and "ProtoSmasher" or syn and "Synapse X" or secure_load and "Sentinel" or is_oxygen_function() and "Oxygen U" or KRNL_LOADED and "Krnl" or fluxus and "Fluxus" or getexecutorname() and "ScriptWare" or identifyexecutor() and "Arceus X" or WRD and "WeAreDevs Api" or IsElectron and "Electron" or "None" 
	return api
end
return a
