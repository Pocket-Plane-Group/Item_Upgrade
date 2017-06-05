EXTEND_BOTTOM BOTSMITH 4
	IF ~PartyHasItem("npsw05")
		PartyHasItem("npsw06")~ THEN GOTO XO#ItemUp00
END
  
APPEND BOTSMITH
	IF ~~ THEN BEGIN XO#ItemUp00 SAY @567898
		IF ~PartyHasItem("npsw05")
			PartyHasItem("npsw06")
			PartyHasItem("sw1h26")
			PartyHasItem("sw1h27")
			PartyHasItem("misc45")
			PartyHasItem("scrl5p")
			PartyHasItem("scrl5i")~ THEN GOTO XO#ItemUp02
		IF ~PartyHasItem("npsw05")
			PartyHasItem("npsw06")
			PartyHasItem("sw1h26")
			PartyHasItem("sw1h27")
			PartyHasItem("misc45")
			PartyHasItem("scrl5p")
			PartyHasItem("scrl5w")~ THEN GOTO XO#ItemUp03
		IF ~PartyHasItem("npsw05")
			PartyHasItem("npsw06")
			!PartyHasItem("scrl5w")
			OR(5)
				!PartyHasItem("sw1h26")
				!PartyHasItem("sw1h27")
				!PartyHasItem("misc45")
				!PartyHasItem("scrl5p")
				!PartyHasItem("scrl5i")~ THEN GOTO XO#ItemUp01
		IF ~PartyHasItem("npsw05")
			PartyHasItem("npsw06")
			!PartyHasItem("scrl5i")
			OR(5)
				!PartyHasItem("sw1h26")
				!PartyHasItem("sw1h27")
				!PartyHasItem("misc45")
				!PartyHasItem("scrl5p")
				!PartyHasItem("scrl5w")~ THEN GOTO XO#ItemUp01
	END
  
	IF ~~ THEN BEGIN XO#ItemUp01 SAY @5678898
		IF ~~ THEN GOTO XO#NoItemUp
	END
  
	IF ~~ THEN BEGIN XO#ItemUp02 SAY @5678998
		IF ~PartyGoldLT(25000)~ THEN REPLY #66662 GOTO XO#NoItemUp
		IF ~PartyGoldGT(24999)~ THEN REPLY #66664 DO ~SetGlobal("XO#TOBItemUp","GLOBAL",43)
											 		 SetGlobal("ImpForgeStuff","GLOBAL",1)
													 SetGlobal("XO#TOBCraft","GLOBAL",1)
													 TakePartyGold(25000)
													 DestroyGold(25000)
													 TakePartyItemNum("npsw05",1)
													 DestroyItem("npsw05")
													 TakePartyItemNum("npsw06",1)
													 DestroyItem("npsw06")
													 TakePartyItemNum("sw1h26",1)
													 DestroyItem("sw1h26")
													 TakePartyItemNum("sw1h27",1)
													 DestroyItem("sw1h27")
													 TakePartyItemNum("misc45",1)   
													 DestroyItem("misc45")
													 TakePartyItemNum("scrl5p",1) 
													 DestroyItem("scrl5p")
													 TakePartyItemNum("scrl5i",1)   
													 DestroyItem("scrl5i")~ GOTO 11
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END
  
	IF ~~ THEN BEGIN XO#ItemUp03 SAY @5678998
		IF ~PartyGoldLT(25000)~ THEN REPLY #66662 GOTO XO#NoItemUp
		IF ~PartyGoldGT(24999)~ THEN REPLY #66664 DO ~SetGlobal("XO#TOBItemUp","GLOBAL",43)
											 		 SetGlobal("ImpForgeStuff","GLOBAL",1)
													 SetGlobal("XO#TOBCraft","GLOBAL",1)
													 TakePartyGold(25000)
													 DestroyGold(25000)
													 TakePartyItemNum("npsw05",1)
													 DestroyItem("npsw05")
													 TakePartyItemNum("npsw06",1)
													 DestroyItem("npsw06")
													 TakePartyItemNum("sw1h26",1)
													 DestroyItem("sw1h26")
													 TakePartyItemNum("sw1h27",1)
													 DestroyItem("sw1h27")
													 TakePartyItemNum("misc45",1)   
													 DestroyItem("misc45")
													 TakePartyItemNum("scrl5p",1) 
													 DestroyItem("scrl5p")
													 TakePartyItemNum("scrl5w",1)   
													 DestroyItem("scrl5w")~ GOTO 11
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END

	IF ~~ THEN BEGIN XO#NoItemUp SAY @5678
		COPY_TRANS BOTSMITH 4
	END
END