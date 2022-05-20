EXTEND_BOTTOM BOTSMITH 4
	IF ~OR(5)
        PartyHasItem("belt02")
        PartyHasItem("belt03")
        PartyHasItem("belt04")
        PartyHasItem("bdbelt13")
        PartyHasItem("bdbelt14")~ THEN GOTO XO#ItemUp00
END
  
APPEND BOTSMITH
	IF ~~ THEN BEGIN XO#ItemUp00 SAY @567893
  IF ~PartyHasItem("belt02")
    PartyHasItem("bdbelt13")
    PartyHasItem("bdbelt14")
    NumItemsPartyGT("misc20",2)
    ~ THEN GOTO XO#ItemUp2

  IF ~PartyHasItem("belt02")
    PartyHasItem("belt03")
    PartyHasItem("bdbelt14")
    !PartyHasItem("bdbelt13")
    NumItemsPartyGT("misc20",2)
    ~ THEN GOTO XO#ItemUp3

  IF ~PartyHasItem("belt02")
    PartyHasItem("bdbelt13")
    PartyHasItem("belt04")
    !PartyHasItem("bdbelt14")
    NumItemsPartyGT("misc20",2)
    ~ THEN GOTO XO#ItemUp4

  IF ~PartyHasItem("belt02")
    PartyHasItem("belt03")
    PartyHasItem("belt04")
    !PartyHasItem("bdbelt13")
    !PartyHasItem("bdbelt14")
    NumItemsPartyGT("misc20",2)
    ~ THEN GOTO XO#ItemUp5

  IF ~PartyHasItem("belt02")
    PartyHasItem("bdbelt13")
    PartyHasItem("bdbelt14")
    NumItemsPartyGT("amul13",2)
    !NumItemsPartyGT("misc20",2)
    ~ THEN GOTO XO#ItemUp6

  IF ~PartyHasItem("belt02")
    PartyHasItem("belt03")
    PartyHasItem("bdbelt14")
    !PartyHasItem("bdbelt13")
    NumItemsPartyGT("amul13",2)
    !NumItemsPartyGT("misc20",2)
    ~ THEN GOTO XO#ItemUp7

  IF ~PartyHasItem("belt02")
    PartyHasItem("bdbelt13")
    PartyHasItem("belt04")
    !PartyHasItem("bdbelt14")
    NumItemsPartyGT("amul13",2)
    !NumItemsPartyGT("misc20",2)
    ~ THEN GOTO XO#ItemUp8

  IF ~PartyHasItem("belt02")
    PartyHasItem("belt03")
    PartyHasItem("belt04")
    !PartyHasItem("bdbelt13")
    !PartyHasItem("bdbelt14")
    NumItemsPartyGT("amul13",2)
    !NumItemsPartyGT("misc20",2)
    ~ THEN GOTO XO#ItemUp9

  IF ~PartyHasItem("belt02")
    PartyHasItem("bdbelt13")
    PartyHasItem("bdbelt14")
    NumItemsPartyGT("ring15",2)
    !NumItemsPartyGT("amul13",2)
    !NumItemsPartyGT("misc20",2)
    ~ THEN GOTO XO#ItemUp10

  IF ~PartyHasItem("belt02")
    PartyHasItem("belt03")
    PartyHasItem("bdbelt14")
    !PartyHasItem("bdbelt13")
    NumItemsPartyGT("ring15",2)
    !NumItemsPartyGT("amul13",2)
    !NumItemsPartyGT("misc20",2)
    ~ THEN GOTO XO#ItemUp11

  IF ~PartyHasItem("belt02")
    PartyHasItem("bdbelt13")
    PartyHasItem("belt04")
    !PartyHasItem("bdbelt14")
    NumItemsPartyGT("ring15",2)
    !NumItemsPartyGT("amul13",2)
    !NumItemsPartyGT("misc20",2)
    ~ THEN GOTO XO#ItemUp12

  IF ~PartyHasItem("belt02")
    PartyHasItem("belt03")
    PartyHasItem("belt04")
    !PartyHasItem("bdbelt13")
    !PartyHasItem("bdbelt14")
    NumItemsPartyGT("ring15",2)
    !NumItemsPartyGT("amul13",2)
    !NumItemsPartyGT("misc20",2)
    ~ THEN GOTO XO#ItemUp13
		IF ~NumItemsPartyLT("misc20",3)
        NumItemsPartyLT("amul13",3)
        NumItemsPartyLT("ring15",3)~ THEN GOTO XO#ItemUp01
		IF ~!PartyHasItem("belt02")~ THEN GOTO XO#ItemUp01
		IF ~!PartyHasItem("belt03")
			  !PartyHasItem("bdbelt13")~ THEN GOTO XO#ItemUp01
		IF ~!PartyHasItem("belt04")
			  !PartyHasItem("bdbelt14")~ THEN GOTO XO#ItemUp01
	END
  
	IF ~~ THEN BEGIN XO#ItemUp01 SAY @5678993
		IF ~~ THEN GOTO XO#NoItemUp
	END
  
  IF ~~ THEN BEGIN XO#ItemUp2 SAY @5678993
    IF ~PartyGoldLT(10000)~ THEN REPLY #66662 GOTO XO#NoItemUp
    IF ~PartyGoldGT(9999)~ THEN REPLY #66664 DO ~SetGlobal("XO#TOBItemUp","GLOBAL",42)
    SetGlobal("ImpForgeStuff","GLOBAL",1)
    SetGlobal("XO#TOBCraft","GLOBAL",1)
    TakePartyGold(10000)
    DestroyGold(10000)
    TakePartyItemNum("belt02",1)
    DestroyItem("belt02")
    TakePartyItemNum("bdbelt13",1) DestroyItem("bdbelt13")
    TakePartyItemNum("bdbelt14",1) DestroyItem("bdbelt14")
    TakePartyItemNum("misc20",1)   DestroyItem("misc20")
    TakePartyItemNum("misc20",1)   DestroyItem("misc20")
    TakePartyItemNum("misc20",1)   DestroyItem("misc20")
    ~ GOTO 11
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
  END

  IF ~~ THEN BEGIN XO#ItemUp3 SAY @5678993
    IF ~PartyGoldLT(10000)~ THEN REPLY #66662 GOTO XO#NoItemUp
    IF ~PartyGoldGT(9999)~ THEN REPLY #66664 DO ~SetGlobal("XO#TOBItemUp","GLOBAL",42)
    SetGlobal("ImpForgeStuff","GLOBAL",1)
    SetGlobal("XO#TOBCraft","GLOBAL",1)
    TakePartyGold(10000)
    DestroyGold(10000)
    TakePartyItemNum("belt02",1)
    DestroyItem("belt02")
    TakePartyItemNum("belt03",1)   DestroyItem("belt03")
    TakePartyItemNum("bdbelt14",1) DestroyItem("bdbelt14")
    TakePartyItemNum("misc20",1)   DestroyItem("misc20")
    TakePartyItemNum("misc20",1)   DestroyItem("misc20")
    TakePartyItemNum("misc20",1)   DestroyItem("misc20")
    ~ GOTO 11
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
  END

  IF ~~ THEN BEGIN XO#ItemUp4 SAY @5678993
    IF ~PartyGoldLT(10000)~ THEN REPLY #66662 GOTO XO#NoItemUp
    IF ~PartyGoldGT(9999)~ THEN REPLY #66664 DO ~SetGlobal("XO#TOBItemUp","GLOBAL",42)
    SetGlobal("ImpForgeStuff","GLOBAL",1)
    SetGlobal("XO#TOBCraft","GLOBAL",1)
    TakePartyGold(10000)
    DestroyGold(10000)
    TakePartyItemNum("belt02",1)
    DestroyItem("belt02")
    TakePartyItemNum("bdbelt13",1) DestroyItem("bdbelt13")
    TakePartyItemNum("belt04",1)   DestroyItem("belt04")
    TakePartyItemNum("misc20",1)   DestroyItem("misc20")
    TakePartyItemNum("misc20",1)   DestroyItem("misc20")
    TakePartyItemNum("misc20",1)   DestroyItem("misc20")
    ~ GOTO 11
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
  END

  IF ~~ THEN BEGIN XO#ItemUp5 SAY @5678993
    IF ~PartyGoldLT(10000)~ THEN REPLY #66662 GOTO XO#NoItemUp
    IF ~PartyGoldGT(9999)~ THEN REPLY #66664 DO ~SetGlobal("XO#TOBItemUp","GLOBAL",42)
    SetGlobal("ImpForgeStuff","GLOBAL",1)
    SetGlobal("XO#TOBCraft","GLOBAL",1)
    TakePartyGold(10000)
    DestroyGold(10000)
    TakePartyItemNum("belt02",1)
    DestroyItem("belt02")
    TakePartyItemNum("belt03",1) DestroyItem("belt03")
    TakePartyItemNum("belt04",1) DestroyItem("belt04")
    TakePartyItemNum("misc20",1) DestroyItem("misc20")
    TakePartyItemNum("misc20",1) DestroyItem("misc20")
    TakePartyItemNum("misc20",1) DestroyItem("misc20")
    ~ GOTO 11
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
  END

  IF ~~ THEN BEGIN XO#ItemUp6 SAY @5678993
    IF ~PartyGoldLT(10000)~ THEN REPLY #66662 GOTO XO#NoItemUp
    IF ~PartyGoldGT(9999)~ THEN REPLY #66664 DO ~SetGlobal("XO#TOBItemUp","GLOBAL",42)
    SetGlobal("ImpForgeStuff","GLOBAL",1)
    SetGlobal("XO#TOBCraft","GLOBAL",1)
    TakePartyGold(10000)
    DestroyGold(10000)
    TakePartyItemNum("belt02",1)
    DestroyItem("belt02")
    TakePartyItemNum("bdbelt13",1) DestroyItem("bdbelt13")
    TakePartyItemNum("bdbelt14",1) DestroyItem("bdbelt14")
    TakePartyItemNum("amul13",1)   DestroyItem("amul13")
    TakePartyItemNum("amul13",1)   DestroyItem("amul13")
    TakePartyItemNum("amul13",1)   DestroyItem("amul13")
    ~ GOTO 11
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
  END

  IF ~~ THEN BEGIN XO#ItemUp7 SAY @5678993
    IF ~PartyGoldLT(10000)~ THEN REPLY #66662 GOTO XO#NoItemUp
    IF ~PartyGoldGT(9999)~ THEN REPLY #66664 DO ~SetGlobal("XO#TOBItemUp","GLOBAL",42)
    SetGlobal("ImpForgeStuff","GLOBAL",1)
    SetGlobal("XO#TOBCraft","GLOBAL",1)
    TakePartyGold(10000)
    DestroyGold(10000)
    TakePartyItemNum("belt02",1)
    DestroyItem("belt02")
    TakePartyItemNum("belt03",1)   DestroyItem("belt03")
    TakePartyItemNum("bdbelt14",1) DestroyItem("bdbelt14")
    TakePartyItemNum("amul13",1)   DestroyItem("amul13")
    TakePartyItemNum("amul13",1)   DestroyItem("amul13")
    TakePartyItemNum("amul13",1)   DestroyItem("amul13")
    ~ GOTO 11
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
  END

  IF ~~ THEN BEGIN XO#ItemUp8 SAY @5678993
    IF ~PartyGoldLT(10000)~ THEN REPLY #66662 GOTO XO#NoItemUp
    IF ~PartyGoldGT(9999)~ THEN REPLY #66664 DO ~SetGlobal("XO#TOBItemUp","GLOBAL",42)
    SetGlobal("ImpForgeStuff","GLOBAL",1)
    SetGlobal("XO#TOBCraft","GLOBAL",1)
    TakePartyGold(10000)
    DestroyGold(10000)
    TakePartyItemNum("belt02",1)
    DestroyItem("belt02")
    TakePartyItemNum("bdbelt13",1) DestroyItem("bdbelt13")
    TakePartyItemNum("belt04",1)   DestroyItem("belt04")
    TakePartyItemNum("amul13",1)   DestroyItem("amul13")
    TakePartyItemNum("amul13",1)   DestroyItem("amul13")
    TakePartyItemNum("amul13",1)   DestroyItem("amul13")
    ~ GOTO 11
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
  END

  IF ~~ THEN BEGIN XO#ItemUp9 SAY @5678993
    IF ~PartyGoldLT(10000)~ THEN REPLY #66662 GOTO XO#NoItemUp
    IF ~PartyGoldGT(9999)~ THEN REPLY #66664 DO ~SetGlobal("XO#TOBItemUp","GLOBAL",42)
    SetGlobal("ImpForgeStuff","GLOBAL",1)
    SetGlobal("XO#TOBCraft","GLOBAL",1)
    TakePartyGold(10000)
    DestroyGold(10000)
    TakePartyItemNum("belt02",1)
    DestroyItem("belt02")
    TakePartyItemNum("belt03",1) DestroyItem("belt03")
    TakePartyItemNum("belt04",1) DestroyItem("belt04")
    TakePartyItemNum("amul13",1) DestroyItem("amul13")
    TakePartyItemNum("amul13",1) DestroyItem("amul13")
    TakePartyItemNum("amul13",1) DestroyItem("amul13")
    ~ GOTO 11
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
  END

  IF ~~ THEN BEGIN XO#ItemUp10 SAY @5678993
    IF ~PartyGoldLT(10000)~ THEN REPLY #66662 GOTO XO#NoItemUp
    IF ~PartyGoldGT(9999)~ THEN REPLY #66664 DO ~SetGlobal("XO#TOBItemUp","GLOBAL",42)
    SetGlobal("ImpForgeStuff","GLOBAL",1)
    SetGlobal("XO#TOBCraft","GLOBAL",1)
    TakePartyGold(10000)
    DestroyGold(10000)
    TakePartyItemNum("belt02",1)
    DestroyItem("belt02")
    TakePartyItemNum("bdbelt13",1) DestroyItem("bdbelt13")
    TakePartyItemNum("bdbelt14",1) DestroyItem("bdbelt14")
    TakePartyItemNum("ring15",1)   DestroyItem("ring15")
    TakePartyItemNum("ring15",1)   DestroyItem("ring15")
    TakePartyItemNum("ring15",1)   DestroyItem("ring15")
    ~ GOTO 11
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
  END

  IF ~~ THEN BEGIN XO#ItemUp11 SAY @5678993
    IF ~PartyGoldLT(10000)~ THEN REPLY #66662 GOTO XO#NoItemUp
    IF ~PartyGoldGT(9999)~ THEN REPLY #66664 DO ~SetGlobal("XO#TOBItemUp","GLOBAL",42)
    SetGlobal("ImpForgeStuff","GLOBAL",1)
    SetGlobal("XO#TOBCraft","GLOBAL",1)
    TakePartyGold(10000)
    DestroyGold(10000)
    TakePartyItemNum("belt02",1)
    DestroyItem("belt02")
    TakePartyItemNum("belt03",1)   DestroyItem("belt03")
    TakePartyItemNum("bdbelt14",1) DestroyItem("bdbelt14")
    TakePartyItemNum("ring15",1)   DestroyItem("ring15")
    TakePartyItemNum("ring15",1)   DestroyItem("ring15")
    TakePartyItemNum("ring15",1)   DestroyItem("ring15")
    ~ GOTO 11
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
  END

  IF ~~ THEN BEGIN XO#ItemUp12 SAY @5678993
    IF ~PartyGoldLT(10000)~ THEN REPLY #66662 GOTO XO#NoItemUp
    IF ~PartyGoldGT(9999)~ THEN REPLY #66664 DO ~SetGlobal("XO#TOBItemUp","GLOBAL",42)
    SetGlobal("ImpForgeStuff","GLOBAL",1)
    SetGlobal("XO#TOBCraft","GLOBAL",1)
    TakePartyGold(10000)
    DestroyGold(10000)
    TakePartyItemNum("belt02",1)
    DestroyItem("belt02")
    TakePartyItemNum("bdbelt13",1) DestroyItem("bdbelt13")
    TakePartyItemNum("belt04",1)   DestroyItem("belt04")
    TakePartyItemNum("ring15",1)   DestroyItem("ring15")
    TakePartyItemNum("ring15",1)   DestroyItem("ring15")
    TakePartyItemNum("ring15",1)   DestroyItem("ring15")
    ~ GOTO 11
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
  END

  IF ~~ THEN BEGIN XO#ItemUp13 SAY @5678993
    IF ~PartyGoldLT(10000)~ THEN REPLY #66662 GOTO XO#NoItemUp
    IF ~PartyGoldGT(9999)~ THEN REPLY #66664 DO ~SetGlobal("XO#TOBItemUp","GLOBAL",42)
    SetGlobal("ImpForgeStuff","GLOBAL",1)
    SetGlobal("XO#TOBCraft","GLOBAL",1)
    TakePartyGold(10000)
    DestroyGold(10000)
    TakePartyItemNum("belt02",1)
    DestroyItem("belt02")
    TakePartyItemNum("belt03",1) DestroyItem("belt03")
    TakePartyItemNum("belt04",1) DestroyItem("belt04")
    TakePartyItemNum("ring15",1) DestroyItem("ring15")
    TakePartyItemNum("ring15",1) DestroyItem("ring15")
    TakePartyItemNum("ring15",1) DestroyItem("ring15")
    ~ GOTO 11
    IF ~~ THEN REPLY #66770 GOTO XO#NoItemUp
  END

	IF ~~ THEN BEGIN XO#NoItemUp SAY @5678
		COPY_TRANS BOTSMITH 4
	END
END