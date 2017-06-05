EXTEND_BOTTOM BOTSMITH 4
	IF ~PartyHasItem("sw2h08")~ THEN GOTO XO#ItemUp00
END
  
APPEND BOTSMITH
	IF ~~ THEN BEGIN XO#ItemUp00 SAY @567884
		IF ~PartyHasItem("sw2h08")
			OR(2)
				!PartyHasItem("compon15")
				!PartyHasItem("sw2h10")~ THEN GOTO XO#ItemUp01
		IF ~PartyHasItem("sw2h08")
			PartyHasItem("compon15")
			PartyHasItem("sw2h10")~ THEN GOTO XO#ItemUp02
	END
  
	IF ~~ THEN BEGIN XO#ItemUp01 SAY @5678884
		IF ~~ THEN GOTO XO#NoItemUp
	END
  
	IF ~~ THEN BEGIN XO#ItemUp02 SAY @5678984
		IF ~PartyGoldLT(20000)~ THEN REPLY #66662 GOTO XO#NoItemUp
		IF ~PartyGoldGT(19999)~ THEN REPLY #66664 DO ~SetGlobal("XO#TOBItemUp","GLOBAL",48)
											 		 SetGlobal("ImpForgeStuff","GLOBAL",1)
													 SetGlobal("XO#TOBCraft","GLOBAL",1)
													 TakePartyGold(20000)
													 DestroyGold(20000)
													 TakePartyItemNum("sw2h08",1)
													 DestroyItem("sw2h08")
													 TakePartyItemNum("compon15",1)
													 DestroyItem("compon15")
													 TakePartyItemNum("sw2h10",1)
													 DestroyItem("sw2h10")~ GOTO 11
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END

	IF ~~ THEN BEGIN XO#NoItemUp SAY @5678
		COPY_TRANS BOTSMITH 4
	END
END