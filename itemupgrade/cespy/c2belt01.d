EXTEND_BOTTOM BOTSMITH 4
	IF ~OR(3)
			PartyHasItem("belt03")
			PartyHasItem("belt02")
			PartyHasItem("belt04")~ THEN GOTO XO#ItemUp00
END
  
APPEND BOTSMITH
	IF ~~ THEN BEGIN XO#ItemUp00 SAY @567893
		IF ~PartyHasItem("belt03")
			PartyHasItem("belt02")
			PartyHasItem("belt04")
			NumItemsPartyGT("misc20",2)~ THEN GOTO XO#ItemUp02
		IF ~PartyHasItem("belt03")
			PartyHasItem("belt02")
			PartyHasItem("belt04")
			NumItemsPartyGT("amul13",2)~ THEN GOTO XO#ItemUp03
		IF ~PartyHasItem("belt03")
			PartyHasItem("belt02")
			PartyHasItem("belt04")
			NumItemsPartyGT("ring15",2)~ THEN GOTO XO#ItemUp04
		IF ~OR(6)
				!PartyHasItem("belt03")
				!PartyHasItem("belt02")
				!PartyHasItem("belt04")
				NumItemsPartyLT("misc20",3)
				NumItemsPartyLT("amul13",3)
				NumItemsPartyLT("ring15",3)~ THEN GOTO XO#ItemUp01
	END
  
	IF ~~ THEN BEGIN XO#ItemUp01 SAY @5678993
		IF ~~ THEN GOTO XO#NoItemUp
	END
  
	IF ~~ THEN BEGIN XO#ItemUp02 SAY @5678993
		IF ~PartyGoldLT(10000)~ THEN REPLY #66662 GOTO XO#NoItemUp
		IF ~PartyGoldGT(9999)~ THEN REPLY #66664 DO ~SetGlobal("XO#TOBItemUp","GLOBAL",42)
											 		 SetGlobal("ImpForgeStuff","GLOBAL",1)
													 SetGlobal("XO#TOBCraft","GLOBAL",1)
													 TakePartyGold(10000)
													 DestroyGold(10000)
													 TakePartyItemNum("belt03",1)
													 DestroyItem("belt03")
													 TakePartyItemNum("belt02",1)
													 DestroyItem("belt02")
													 TakePartyItemNum("belt04",1)
													 DestroyItem("belt04")
													 TakePartyItemNum("misc20",1)
													 DestroyItem("misc20")
													 TakePartyItemNum("misc20",1)
													 DestroyItem("misc20")
													 TakePartyItemNum("misc20",1)
													 DestroyItem("misc20")~ GOTO 11
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END
  
	IF ~~ THEN BEGIN XO#ItemUp03 SAY @5678993
		IF ~PartyGoldLT(10000)~ THEN REPLY #66662 GOTO XO#NoItemUp
		IF ~PartyGoldGT(9999)~ THEN REPLY #66664 DO ~SetGlobal("XO#TOBItemUp","GLOBAL",42)
											 		 SetGlobal("ImpForgeStuff","GLOBAL",1)
													 SetGlobal("XO#TOBCraft","GLOBAL",1)
													 TakePartyGold(10000)
													 DestroyGold(10000)
													 TakePartyItemNum("belt03",1)
													 DestroyItem("belt03")
													 TakePartyItemNum("belt02",1)
													 DestroyItem("belt02")
													 TakePartyItemNum("belt04",1)
													 DestroyItem("belt04")
													 TakePartyItemNum("amul13",1)
													 DestroyItem("amul13")
													 TakePartyItemNum("amul13",1)
													 DestroyItem("amul13")
													 TakePartyItemNum("amul13",1)
													 DestroyItem("amul13")~ GOTO 11
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END
  
	IF ~~ THEN BEGIN XO#ItemUp04 SAY @5678993
		IF ~PartyGoldLT(10000)~ THEN REPLY #66662 GOTO XO#NoItemUp
		IF ~PartyGoldGT(9999)~ THEN REPLY #66664 DO ~SetGlobal("XO#TOBItemUp","GLOBAL",42)
											 		 SetGlobal("ImpForgeStuff","GLOBAL",1)
													 SetGlobal("XO#TOBCraft","GLOBAL",1)
													 TakePartyGold(10000)
													 DestroyGold(10000)
													 TakePartyItemNum("belt03",1)
													 DestroyItem("belt03")
													 TakePartyItemNum("belt02",1)
													 DestroyItem("belt02")
													 TakePartyItemNum("belt04",1)
													 DestroyItem("belt04")
													 TakePartyItemNum("ring15",1)
													 DestroyItem("ring15")
													 TakePartyItemNum("ring15",1)
													 DestroyItem("ring15")
													 TakePartyItemNum("ring15",1)
													 DestroyItem("ring15")~ GOTO 11
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END

	IF ~~ THEN BEGIN XO#NoItemUp SAY @5678
		COPY_TRANS BOTSMITH 4
	END
END