// ======================================================
// Copyright (c) 2017-2026 the ReSDK_A3 project
// sdk.relicta.ru
// ======================================================

regScriptEmit(SLIGHT_M_LAMPAHEAD)
	[
		"lt",
		null,
		_emitAlias("Точечный свет 1")
		["linkToSrc",[0,0,0.1]],
		["setLightColor",[0,0.5,0.25]],
		["setLightAmbient",[0.08,0.27,0.12]],
		["setLightIntensity",50],
		["setLightAttenuation",[0,0,0,15,1,3]]
	]
	,[
		"pt",
		null,
		_emitAlias("Частицы 2")
		["linkToLight",[0,0,0.25]],
		["setParticleParams",[["\A3\data_f\ParticleEffects\Universal\Universal.p3d",16,13,3,0],"","Billboard",3,1.5,[0,0,0],[0,0,0],1,1.265,1.005,0,[0.005,0],[[1,1,1,-50]],[100],0,0,"","","",0,false,-1,[]]],
		["setParticleRandom",[0.01,[0.03,0.03,0.03],[0,0,0],0,0.03,[0.05,0.05,0.05,5],0.1,0.05,45,0]],
		["setParticleCircle",[0.07,[0,0,0]]],
		["setDropInterval",1.5]
	]
endScriptEmit