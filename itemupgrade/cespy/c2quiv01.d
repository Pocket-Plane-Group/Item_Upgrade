EXTEND_BOTTOM BOTSMITH 4
	IF ~PartyHasItem("quiver03")~ THEN GOTO XO#ItemUp00
END
  
APPEND BOTSMITH
	IF ~~ THEN BEGIN XO#ItemUp00 SAY @5678791
		IF ~PartyHasItem("quiver03")
			NumItemsPartyLT("arow15",40)~ THEN GOTO XO#ItemUp01
		IF ~PartyHasItem("quiver03")
			NumItemsPartyGT("arow15",39)~ THEN GOTO XO#ItemUp02
	END
  
	IF ~~ THEN BEGIN XO#ItemUp01 SAY @56789791
		IF ~~ THEN GOTO XO#NoItemUp
	END
  
	IF ~~ THEN BEGIN XO#ItemUp02 SAY @56789791
		IF ~PartyGoldLT(40000)~ THEN REPLY #66662 GOTO XO#NoItemUp
		IF ~PartyGoldGT(39999)~ THEN REPLY #66664 DO ~SetGlobal("XO#TOBItemUp","GLOBAL",44)
											 		 SetGlobal("ImpForgeStuff","GLOBAL",1)
													 SetGlobal("XO#TOBCraft","GLOBAL",1)
													 TakePartyGold(40000)
													 DestroyGold(40000)
													 TakePartyItemNum("quiver03",1)
													 DestroyItem("quiver03")
													 TakePartyItemNum("arow15",40)
													 DestroyItem("arow15")~ GOTO 11
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END

	IF ~~ THEN BEGIN XO#NoItemUp SAY @5678
		COPY_TRANS BOTSMITH 4
	END
END