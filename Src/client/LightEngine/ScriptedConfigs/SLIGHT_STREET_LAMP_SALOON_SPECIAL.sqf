// ======================================================
// Copyright (c) 2017-2026 the ReSDK_A3 project
// sdk.relicta.ru
// ======================================================

regScriptEmit(SLIGHT_STREET_LAMP_SALOON_SPECIAL)
	[
		"ltd",
		null,
		_emitAlias("Направленный свет 1")
		["linkToSrc",[0,0.1,3.26]],
		["setOrient",[0,-90,0]],
		["setLightColor",[1,0.6,0.35]],
		["setLightIntensity",1800],
		["setLightUseFlare",true],
		["setLightFlareSize",0.5],
		["setLightFlareMaxDistance",30],
		["setLightAttenuation",[0,0,0,0,8,12]],
		["setLightConePars",[360,50,5]]
	]
endScriptEmit