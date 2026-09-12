// ======================================================
// Copyright (c) 2017-2026 the ReSDK_A3 project
// sdk.relicta.ru
// ======================================================

#include <..\..\..\..\engine.hpp>
#include <..\..\..\..\oop.hpp>
#include <..\..\..\GameConstants.hpp>

class(Mushroom) extends(IFoodItem)
	//Количество токсинов за один укус.
	var(toxinOnConsume,0);

	getterconst_func(getBiteSize,5);
	var(icon,invicon(mush_base));
	var(size,ITEM_SIZE_MEDIUM);

	func(onConsumed)
	{
		objParams_1(_consumer);
		private _toxinAmount = getSelf(toxinOnConsume);
		if (_toxinAmount <= 0) exitWith {};
		callFuncParams(_consumer,adjustToxin,_toxinAmount);
	};

	//getter_func(getDropSound,"dropping\keydrop");
	getter_func(getPickupSound,"updown\itm_ingredient_mushroom_up_0" + str randInt(1,4));
	//getter_func(getPutdownSound,"updown\keyring_up");
endclass

class(Slimehat) extends(Mushroom)
	var(name,"Слизнешляпик");
	var(model,"ml_shabut\mushrooms\grib8.p3d");
	var(reagents,[vec2("Alvitin",randInt(5,25))]newReagentsFood);
	var(weight,gramm(900));
	var(toxinOnConsume,120);
endclass

class(Meatflower) extends(Mushroom)
	var(name,"Мясной цветок");
	var(model,"relicta_models\models\mushroom\meatgrib.p3d");
	var(reagents,[vec2("Kenazin",randInt(5,17)) arg vec2("Nutriment",randInt(5,8))]newReagentsFood);
	var(size,ITEM_SIZE_HUGE);
	var(weight,1.2);
	var(toxinOnConsume,50);
endclass

class(Blevanton) extends(Mushroom)
	var(name,"Блевантон");
	var(model,"relicta_models\models\mushroom\blevanton1v2.p3d");
	var(reagents,[vec2("Askadiy",randInt(5,20)) arg vec2("Nutriment",randInt(0,5))]newReagentsFood);
	var(size,ITEM_SIZE_MEDIUM);
	var(weight,gramm(800));
endclass

class(Gnilokornik) extends(Mushroom)
	var(name,"Гнилокорник");
	var(model,"relicta_models\models\mushroom\bliznecolor.p3d");
	var(reagents,[vec2("Opirin",randInt(5,25))]newReagentsFood);
	var(size,ITEM_SIZE_BIG);
	var(weight,1.3);
	var(toxinOnConsume,120);
endclass

class(Zhivoglot) extends(Mushroom)
	var(name,"Живоглот");
	var(model,"ml_shabut\mushrooms\grib5.p3d");
	var(reagents,[vec2("Nutriment",randInt(5,25))]newReagentsFood);
	var(size,ITEM_SIZE_MEDIUM);
	var(weight,gramm(800));
endclass

class(Zhirovik) extends(Mushroom)
	var(name,"Жировик");
	var(model,"ml_shabut\mushrooms\grib6.p3d");
	var(reagents,[vec2("Nutriment",randInt(1,3))]newReagentsFood);
	getterconst_func(getBiteSize,1);
	var(size,ITEM_SIZE_MEDIUM);
	var(weight,gramm(1100));
endclass

class(LampaHead) extends(Mushroom)
	var(name,"Ламповая голова");
	var(model,"ml_shabut\exoduss\gribabas1.p3d");
	var(reagents,[vec2("Alvitin",randInt(1,4))]newReagentsFood);
	getterconst_func(getBiteSize,1);
		/* Как решить проблему?
	var(light,"SLIGHT_M_LAMPAHEAD" call lightSys_getConfigIdByName);
	*/
	var(size,ITEM_SIZE_SMALL);
	var(weight,gramm(200));
	var(toxinOnConsume,170);
endclass

class(Svetlik) extends(Mushroom)
	var(name,"Светлик");
	var(desc,"Красивый и светится желтым")
	var(model,"ml_shabut\exoduss\gribabas2.p3d");
	var(reagents,[vec2("Nutriment",randInt(1,3))]newReagentsFood);
	getterconst_func(getBiteSize,1);
	/* Как решить проблему?
	var(light,"SLIGHT_M_SVETOLIK" call lightSys_getConfigIdByName);
	*/
	var(size,ITEM_SIZE_SMALL);
	var(weight,gramm(200));
endclass

class(Yaichnik) extends(Mushroom)
	var(name,"Яичник");
	var(model,"relicta_models\models\mushroom\blevanton2v2.p3d");
	var(reagents,[vec2("Nutriment",randInt(5,25))]newReagentsFood);
	var(size,ITEM_SIZE_MEDIUM);
	var(weight,gramm(900));
endclass

class(Svetlolik) extends(Mushroom)
	var(name,"Светлолик");
	var(model,"relicta_models\models\mushroom\mushroom1.p3d");
	var(reagents,[vec2("Metaficin",randInt(5,10)) arg vec2("Nutriment",randInt(5,10))]newReagentsFood);
	var(weight,gramm(600));
endclass


class(Tumannik) extends(Mushroom)
	var(name,"Туманник");
	var(model,"relicta_models\models\mushroom\kislyak.p3d");
	var(reagents,[vec2("Ipamitin",randInt(10,25))]newReagentsFood);
	getterconst_func(getBiteSize,5);
	var(icon,invicon(mush_base));
	var(size,ITEM_SIZE_MEDIUM);
	var(weight,gramm(600));
	var(toxinOnConsume,120);
endclass

/// kitchen
/*class(BakedPotato) extends(Slimehat)
	var(name,"""Пичоная картошичка""");
	var(desc,"А что такое ""картошичка""?!...");
	var(model,"relicta_models\models\mushroom\temnolik.p3d");
endclass*/
