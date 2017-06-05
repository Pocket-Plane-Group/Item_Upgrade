EXTEND_BOTTOM WSMITH01 13
	IF ~OR(3)
			PartyHasItem("amul22")
			PartyHasItem("amul24")
			PartyHasItem("amul25")~ THEN GOTO XO#ItemUp00
END
  
APPEND WSMITH01
	IF ~~ THEN BEGIN XO#ItemUp00 SAY @123478
		IF ~~ THEN GOTO XO#ItemUp01
		IF ~PartyHasItem("amul22")
			PartyHasItem("amul24")
			PartyHasItem("amul25")
			NumItemsParty("cdpp7",1)
			NumItemsParty("amul14",1)~ THEN GOTO XO#ItemUp02
		IF ~PartyHasItem("amul22")
			PartyHasItem("amul24")
			PartyHasItem("amul25")
			NumItemsParty("c!pp7",1)
			NumItemsParty("amul14",1)~ THEN GOTO XO#ItemUp03
		IF ~PartyHasItem("amul22")
			PartyHasItem("amul24")
			PartyHasItem("amul25")
			NumItemsParty("c!pp7",1)
			NumItemsParty("cdpp7",1)~ THEN GOTO XO#ItemUp04
		IF ~PartyHasItem("amul22")
			PartyHasItem("amul24")
			PartyHasItem("amul25")
			NumItemsPartyGT("amul14",1)~ THEN GOTO XO#ItemUp05
		IF ~PartyHasItem("amul22")
			PartyHasItem("amul24")
			PartyHasItem("amul25")
                              NumItemsPartyGT("cdpp7",1)~ THEN GOTO XO#ItemUp06
		IF ~PartyHasItem("amul22")
			PartyHasItem("amul24")
			PartyHasItem("amul25")
			NumItemsPartyGT("c!pp7",1)~ THEN GOTO XO#ItemUp07
	END
  
	IF ~~ THEN BEGIN XO#ItemUp01 SAY @1234878
		IF ~~ THEN GOTO XO#NoItemUp
	END

	IF ~~ THEN BEGIN XO#ItemUp02 SAY @1234978
		IF ~PartyGoldLT(10000)~ THEN REPLY #66662 GOTO XO#NoItemUp
		IF ~PartyGoldGT(9999)~ THEN REPLY #66664 DO ~SetGlobal("XO#ItemUp","ar0334",35)
											 		 SetGlobal("ForgeStuff","GLOBAL",1)
													 TakePartyGold(10000)
													 DestroyGold(10000)
													 TakePartyItemNum("amul22",1)
													 DestroyItem("amul22")
													 TakePartyItemNum("amul24",1)
													 DestroyItem("amul24")
													 TakePartyItemNum("amul25",1)
													 DestroyItem("amul25")
													 TakePartyItemNum("amul14",1)
													 DestroyItem("amul14")
													 TakePartyItemNum("cdpp7",1)
													 DestroyItem("cdpp7")~ GOTO 56
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END

	IF ~~ THEN BEGIN XO#ItemUp03 SAY @1234978
		IF ~PartyGoldLT(10000)~ THEN REPLY #66662 GOTO XO#NoItemUp
		IF ~PartyGoldGT(9999)~ THEN REPLY #66664 DO ~SetGlobal("XO#ItemUp","ar0334",35)
											 		 SetGlobal("ForgeStuff","GLOBAL",1)
													 TakePartyGold(10000)
													 DestroyGold(10000)
													 TakePartyItemNum("amul22",1)
													 DestroyItem("amul22")
													 TakePartyItemNum("amul24",1)
													 DestroyItem("amul24")
													 TakePartyItemNum("amul25",1)
													 DestroyItem("amul25")
													 TakePartyItemNum("amul14",1)
													 DestroyItem("amul14")
													 TakePartyItemNum("c!pp7",1)
													 DestroyItem("c!pp7")~ GOTO 56
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END

	IF ~~ THEN BEGIN XO#ItemUp04 SAY @1234978
		IF ~PartyGoldLT(10000)~ THEN REPLY #66662 GOTO XO#NoItemUp
		IF ~PartyGoldGT(9999)~ THEN REPLY #66664 DO ~SetGlobal("XO#ItemUp","ar0334",35)
											 		 SetGlobal("ForgeStuff","GLOBAL",1)
													 TakePartyGold(10000)
													 DestroyGold(10000)
													 TakePartyItemNum("amul22",1)
													 DestroyItem("amul22")
													 TakePartyItemNum("amul24",1)
													 DestroyItem("amul24")
													 TakePartyItemNum("amul25",1)
													 DestroyItem("amul25")
													 TakePartyItemNum("c!pp7",1)
													 DestroyItem("c!pp7")
													 TakePartyItemNum("cdpp7",1)
													 DestroyItem("cdpp7")~ GOTO 56
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END

	IF ~~ THEN BEGIN XO#ItemUp05 SAY @1234978
		IF ~PartyGoldLT(10000)~ THEN REPLY #66662 GOTO XO#NoItemUp
		IF ~PartyGoldGT(9999)~ THEN REPLY #66664 DO ~SetGlobal("XO#ItemUp","ar0334",35)
											 		 SetGlobal("ForgeStuff","GLOBAL",1)
													 TakePartyGold(10000)
													 DestroyGold(10000)
													 TakePartyItemNum("amul22",1)
													 DestroyItem("amul22")
													 TakePartyItemNum("amul24",1)
													 DestroyItem("amul24")
													 TakePartyItemNum("amul25",1)
													 DestroyItem("amul25")
													 TakePartyItemNum("amul14",2)
													 DestroyItem("amul14")
													 DestroyItem("amul14")~ GOTO 56
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END

	IF ~~ THEN BEGIN XO#ItemUp06 SAY @1234978
		IF ~PartyGoldLT(10000)~ THEN REPLY #66662 GOTO XO#NoItemUp
		IF ~PartyGoldGT(9999)~ THEN REPLY #66664 DO ~SetGlobal("XO#ItemUp","ar0334",35)
											 		 SetGlobal("ForgeStuff","GLOBAL",1)
													 TakePartyGold(10000)
													 DestroyGold(10000)
													 TakePartyItemNum("amul22",1)
													 DestroyItem("amul22")
													 TakePartyItemNum("amul24",1)
													 DestroyItem("amul24")
													 TakePartyItemNum("amul25",1)
													 DestroyItem("amul25")
													 TakePartyItemNum("cdpp7",2)
													 DestroyItem("cdpp7")
													 DestroyItem("cdpp7")~ GOTO 56
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END

	IF ~~ THEN BEGIN XO#ItemUp07 SAY @1234978
		IF ~PartyGoldLT(10000)~ THEN REPLY #66662 GOTO XO#NoItemUp
		IF ~PartyGoldGT(9999)~ THEN REPLY #66664 DO ~SetGlobal("XO#ItemUp","ar0334",35)
											 		 SetGlobal("ForgeStuff","GLOBAL",1)
													 TakePartyGold(10000)
													 DestroyGold(10000)
													 TakePartyItemNum("amul22",1)
													 DestroyItem("amul22")
													 TakePartyItemNum("amul24",1)
													 DestroyItem("amul24")
													 TakePartyItemNum("amul25",1)
													 DestroyItem("amul25")
													 TakePartyItemNum("c!pp7",2)
													 DestroyItem("c!pp7")
													 DestroyItem("c!pp7")~ GOTO 56
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
	END

	IF WEIGHT #-1 ~OR(2) GlobalGT("XO#Craft","ar0334",0) GlobalGT("XO#ItemUp","ar0334",0)~ THEN BEGIN XO#CRAFT SAY #59797
		IF ~~ THEN DO ~SetGlobal("XO#Craft","ar0334",0) SetGlobal("XO#ItemUp","ar0334",0)~ EXIT
	END

	IF ~~ THEN BEGIN XO#NoItemUp SAY @1234
		COPY_TRANS WSMITH01 13
	END
END