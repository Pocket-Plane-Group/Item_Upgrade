EXTEND_BOTTOM WSMITH01 13
	IF ~OR(6)
			PartyHasItem("ring08")
			PartyHasItem("ring08a")
			PartyHasItem("ring40")
			PartyHasItem("ring06")
			PartyHasItem("cdpp11")
			PartyHasItem("c!pp11")~ THEN GOTO XO#ItemUp00
END
  
APPEND WSMITH01
	IF ~~ THEN BEGIN XO#ItemUp00 SAY @123481
		IF ~OR(2) PartyHasItem("ring08") PartyHasItem("ring08a")
				PartyHasItem("ring40")
			PartyHasItem("amul16")
			!PartyHasItem("ring06")
			!PartyHasItem("cdpp11")
			!PartyHasItem("c!pp11")~ THEN GOTO XO#ItemUp01
		IF ~OR(4)
				!PartyHasItem("ring08")
				!PartyHasItem("ring08a")
				!PartyHasItem("ring40")
			!PartyHasItem("amul16")~ THEN GOTO XO#ItemUp01
		IF ~PartyHasItem("ring08")
			PartyHasItem("ring40")
			PartyHasItem("ring06")
			PartyHasItem("amul16")~ THEN GOTO XO#ItemUp02
		IF ~PartyHasItem("ring08")
			PartyHasItem("ring40")
			PartyHasItem("cdpp11")
			PartyHasItem("amul16")~ THEN GOTO XO#ItemUp03
		IF ~PartyHasItem("ring08")
			PartyHasItem("ring40")
			PartyHasItem("c!pp11")
			PartyHasItem("amul16")~ THEN GOTO XO#ItemUp04
		IF ~PartyHasItem("ring08a")
			PartyHasItem("ring40")
			PartyHasItem("ring06")
			PartyHasItem("amul16")~ THEN GOTO XO#ItemUp02a
		IF ~PartyHasItem("ring08a")
			PartyHasItem("ring40")
			PartyHasItem("cdpp11")
			PartyHasItem("amul16")~ THEN GOTO XO#ItemUp03a
		IF ~PartyHasItem("ring08a")
			PartyHasItem("ring40")
			PartyHasItem("c!pp11")
			PartyHasItem("amul16")~ THEN GOTO XO#ItemUp04a
	END
  
	IF ~~ THEN BEGIN XO#ItemUp01 SAY @1234881
		IF ~~ THEN GOTO XO#NoItemUp
	END
  
	IF ~~ THEN BEGIN XO#ItemUp02 SAY @1234981
		IF ~PartyGoldLT(20000)~ THEN REPLY #66662 GOTO XO#NoItemUp
		IF ~PartyGoldGT(19999)~ THEN REPLY #66664 DO ~SetGlobal("XO#ItemUp","ar0334",38)
											 		 SetGlobal("ForgeStuff","GLOBAL",1)
													 TakePartyGold(20000)
													 DestroyGold(20000)
													 TakePartyItemNum("ring08",1)
													 DestroyItem("ring08")
													 TakePartyItemNum("ring40",1)
													 DestroyItem("ring40")
													 TakePartyItemNum("ring06",1)
													 DestroyItem("ring06")
													 TakePartyItemNum("amul16",1)
													 DestroyItem("amul16")~ GOTO 56
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END
  
	IF ~~ THEN BEGIN XO#ItemUp03 SAY @1234981
		IF ~PartyGoldLT(20000)~ THEN REPLY #66662 GOTO XO#NoItemUp
		IF ~PartyGoldGT(19999)~ THEN REPLY #66664 DO ~SetGlobal("XO#ItemUp","ar0334",38)
											 		 SetGlobal("ForgeStuff","GLOBAL",1)
													 TakePartyGold(20000)
													 DestroyGold(20000)
													 TakePartyItemNum("ring08",1)
													 DestroyItem("ring08")
													 TakePartyItemNum("ring40",1)
													 DestroyItem("ring40")
													 TakePartyItemNum("cdpp11",1)
													 DestroyItem("cdpp11")
													 TakePartyItemNum("amul16",1)
													 DestroyItem("amul16")~ GOTO 56
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END
  
	IF ~~ THEN BEGIN XO#ItemUp04 SAY @1234981
		IF ~PartyGoldLT(20000)~ THEN REPLY #66662 GOTO XO#NoItemUp
		IF ~PartyGoldGT(19999)~ THEN REPLY #66664 DO ~SetGlobal("XO#ItemUp","ar0334",38)
											 		 SetGlobal("ForgeStuff","GLOBAL",1)
													 TakePartyGold(20000)
													 DestroyGold(20000)
													 TakePartyItemNum("ring08",1)
													 DestroyItem("ring08")
													 TakePartyItemNum("ring40",1)
													 DestroyItem("ring40")
													 TakePartyItemNum("c!pp11",1)
													 DestroyItem("c!pp11")
													 TakePartyItemNum("amul16",1)
													 DestroyItem("amul16")~ GOTO 56
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END
  
	IF ~~ THEN BEGIN XO#ItemUp02a SAY @1234981
		IF ~PartyGoldLT(20000)~ THEN REPLY #66662 GOTO XO#NoItemUp
		IF ~PartyGoldGT(19999)~ THEN REPLY #66664 DO ~SetGlobal("XO#ItemUp","ar0334",38)
											 		 SetGlobal("ForgeStuff","GLOBAL",1)
													 TakePartyGold(20000)
													 DestroyGold(20000)
													 TakePartyItemNum("ring08a",1)
													 DestroyItem("ring08a")
													 TakePartyItemNum("ring40",1)
													 DestroyItem("ring40")
													 TakePartyItemNum("ring06",1)
													 DestroyItem("ring06")
													 TakePartyItemNum("amul16",1)
													 DestroyItem("amul16")~ GOTO 56
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END
  
	IF ~~ THEN BEGIN XO#ItemUp03a SAY @1234981
		IF ~PartyGoldLT(20000)~ THEN REPLY #66662 GOTO XO#NoItemUp
		IF ~PartyGoldGT(19999)~ THEN REPLY #66664 DO ~SetGlobal("XO#ItemUp","ar0334",38)
											 		 SetGlobal("ForgeStuff","GLOBAL",1)
													 TakePartyGold(20000)
													 DestroyGold(20000)
													 TakePartyItemNum("ring08a",1)
													 DestroyItem("ring08a")
													 TakePartyItemNum("ring40",1)
													 DestroyItem("ring40")
													 TakePartyItemNum("cdpp11",1)
													 DestroyItem("cdpp11")
													 TakePartyItemNum("amul16",1)
													 DestroyItem("amul16")~ GOTO 56
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END

	IF ~~ THEN BEGIN XO#ItemUp04a SAY @1234981
		IF ~PartyGoldLT(20000)~ THEN REPLY #66662 GOTO XO#NoItemUp
		IF ~PartyGoldGT(19999)~ THEN REPLY #66664 DO ~SetGlobal("XO#ItemUp","ar0334",38)
											 		 SetGlobal("ForgeStuff","GLOBAL",1)
													 TakePartyGold(20000)
													 DestroyGold(20000)
													 TakePartyItemNum("ring08a",1)
													 DestroyItem("ring08a")
													 TakePartyItemNum("ring40",1)
													 DestroyItem("ring40")
													 TakePartyItemNum("c!pp11",1)
													 DestroyItem("c!pp11")
													 TakePartyItemNum("amul16",1)
													 DestroyItem("amul16")~ GOTO 56
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END

	IF ~~ THEN BEGIN XO#NoItemUp SAY @1234
		COPY_TRANS WSMITH01 13
	END
END