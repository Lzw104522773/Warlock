// Warlock - learn spell

BEGIN C0WLTALK

IF ~Global("C0WarlockBegin","LOCALS",0)~ first
SAY @0 /* Choose a grade of invocation: */
+ ~GlobalGT("C0WLSP1","LOCALS",0)
OR(8)
!HaveKnownSpellRES("c0wl104")
!HaveKnownSpellRES("c0wl105")
!HaveKnownSpellRES("c0wl106")
!HaveKnownSpellRES("c0wl107")
!HaveKnownSpellRES("c0wl108")
!HaveKnownSpellRES("c0wl109")
!HaveKnownSpellRES("c0wl110")
!HaveKnownSpellRES("c0wl111")~ + @1 /* Least */ DO ~SetGlobal("C0WarlockBegin","LOCALS",1)~ + least
+ ~GlobalGT("C0WLSP2","LOCALS",0)
OR(10)
!HaveKnownSpellRES("c0wl201")
!HaveKnownSpellRES("c0wl202")
!HaveKnownSpellRES("c0wl203")
!HaveKnownSpellRES("c0wl204")
!HaveKnownSpellRES("c0wl205")
!HaveKnownSpellRES("c0wl206")
!HaveKnownSpellRES("c0wl207")
!HaveKnownSpellRES("c0wl208")
!HaveKnownSpellRES("c0wl209")
!HaveKnownSpellRES("c0wl210")~ + @2 /* Lesser */ DO ~SetGlobal("C0WarlockBegin","LOCALS",1)~ + lesser
+ ~GlobalGT("C0WLSP3","LOCALS",0)
OR(8)
!HaveKnownSpellRES("c0wl301")
!HaveKnownSpellRES("c0wl302")
!HaveKnownSpellRES("c0wl303")
!HaveKnownSpellRES("c0wl304")
!HaveKnownSpellRES("c0wl305")
!HaveKnownSpellRES("c0wl306")
!HaveKnownSpellRES("c0wl307")
!HaveKnownSpellRES("c0wl308")~ + @3 /* Greater */ DO ~SetGlobal("C0WarlockBegin","LOCALS",1)~ + greater
+ ~GlobalGT("C0WLSP4","LOCALS",0)
OR(5)
!HaveKnownSpellRES("c0wl401")
!HaveKnownSpellRES("c0wl402")
!HaveKnownSpellRES("c0wl403")
!HaveKnownSpellRES("c0wl404")
!HaveKnownSpellRES("c0wl405")~ + @4 /* Dark */ DO ~SetGlobal("C0WarlockBegin","LOCALS",1)~ + dark
END

IF ~!Global("C0WarlockBegin","LOCALS",0)
OR(5)
!Global("C0WLSP1","LOCALS",0)
!Global("C0WLSP2","LOCALS",0)
!Global("C0WLSP3","LOCALS",0)
!Global("C0WLSP4","LOCALS",0)
Global("ChangeInvocation","LOCALS",0)~ start
SAY @5 /* What do you want to do? */
+ ~OR(4)
!Global("C0WLSP1","LOCALS",0)
!Global("C0WLSP2","LOCALS",0)
!Global("C0WLSP3","LOCALS",0)
!Global("C0WLSP4","LOCALS",0)~ + @6 /* Learn invocation. */ + learn
+ ~OR(31)
HaveKnownSpellRES("c0wl104")
HaveKnownSpellRES("c0wl105")
HaveKnownSpellRES("c0wl106")
HaveKnownSpellRES("c0wl107")
HaveKnownSpellRES("c0wl108")
HaveKnownSpellRES("c0wl109")
HaveKnownSpellRES("c0wl110")
HaveKnownSpellRES("c0wl111")
HaveKnownSpellRES("c0wl201")
HaveKnownSpellRES("c0wl202")
HaveKnownSpellRES("c0wl203")
HaveKnownSpellRES("c0wl204")
HaveKnownSpellRES("c0wl205")
HaveKnownSpellRES("c0wl206")
HaveKnownSpellRES("c0wl207")
HaveKnownSpellRES("c0wl208")
HaveKnownSpellRES("c0wl209")
HaveKnownSpellRES("c0wl210")
HaveKnownSpellRES("c0wl301")
HaveKnownSpellRES("c0wl302")
HaveKnownSpellRES("c0wl303")
HaveKnownSpellRES("c0wl304")
HaveKnownSpellRES("c0wl305")
HaveKnownSpellRES("c0wl306")
HaveKnownSpellRES("c0wl307")
HaveKnownSpellRES("c0wl308")
HaveKnownSpellRES("c0wl401")
HaveKnownSpellRES("c0wl402")
HaveKnownSpellRES("c0wl403")
HaveKnownSpellRES("c0wl404")
HaveKnownSpellRES("c0wl405")
Global("ChangeInvocation","LOCALS",0)~ + @7 /* Change invocations. */ + change
+ ~Global("C0WLSP1","LOCALS",0)
Global("C0WLSP2","LOCALS",0)
Global("C0WLSP3","LOCALS",0)
Global("C0WLSP4","LOCALS",0)~ + @8 /* Exit. */ DO ~ClearAllActions()~ EXIT
END

IF ~~ change
SAY @9 /* Once per level up, a warlock may exchange one of their invocations for another of the same grade.

Choose a grade of invocation: */
+ ~OR(8)
HaveKnownSpellRES("c0wl104")
HaveKnownSpellRES("c0wl105")
HaveKnownSpellRES("c0wl106")
HaveKnownSpellRES("c0wl107")
HaveKnownSpellRES("c0wl108")
HaveKnownSpellRES("c0wl109")
HaveKnownSpellRES("c0wl110")
HaveKnownSpellRES("c0wl111")~ + @1 /* Least */ + change.least
+ ~OR(10)
HaveKnownSpellRES("c0wl201")
HaveKnownSpellRES("c0wl202")
HaveKnownSpellRES("c0wl203")
HaveKnownSpellRES("c0wl204")
HaveKnownSpellRES("c0wl205")
HaveKnownSpellRES("c0wl206")
HaveKnownSpellRES("c0wl207")
HaveKnownSpellRES("c0wl208")
HaveKnownSpellRES("c0wl209")
HaveKnownSpellRES("c0wl210")~ + @2 /* Lesser */ + change.lesser
+ ~OR(8)
HaveKnownSpellRES("c0wl301")
HaveKnownSpellRES("c0wl302")
HaveKnownSpellRES("c0wl303")
HaveKnownSpellRES("c0wl304")
HaveKnownSpellRES("c0wl305")
HaveKnownSpellRES("c0wl306")
HaveKnownSpellRES("c0wl307")
HaveKnownSpellRES("c0wl308")~ + @3 /* Greater */ + change.greater
+ ~OR(5)
HaveKnownSpellRES("c0wl401")
HaveKnownSpellRES("c0wl402")
HaveKnownSpellRES("c0wl403")
HaveKnownSpellRES("c0wl404")
HaveKnownSpellRES("c0wl405")~ + @4 /* Dark */ + change.dark
++ @10 /* Go back */ + start
END

IF ~~ change.least
SAY @11 /* Choose one Least Invocation: */
+ ~HaveKnownSpellRES("c0wl104")~ + @12 /* Beguiling Influence */ DO ~ApplySpellRES("c0wl104x",Myself) SetGlobal("ChangeInvocation","LOCALS",1) IncrementGlobal("C0WLSP1","LOCALS",1)~ + change2
+ ~HaveKnownSpellRES("c0wl105")~ + @13 /* Dark One's Own Luck */ DO ~ApplySpellRES("c0wl105x",Myself) SetGlobal("ChangeInvocation","LOCALS",1) IncrementGlobal("C0WLSP1","LOCALS",1)~ + change2
+ ~HaveKnownSpellRES("c0wl106")~ + @14 /* Draining Blast */ DO ~ApplySpellRES("c0wl106x",Myself) SetGlobal("ChangeInvocation","LOCALS",1) IncrementGlobal("C0WLSP1","LOCALS",1)~ + change2
+ ~HaveKnownSpellRES("c0wl107")~ + @15 /* Frightful Blast */ DO ~ApplySpellRES("c0wl107x",Myself) SetGlobal("ChangeInvocation","LOCALS",1) IncrementGlobal("C0WLSP1","LOCALS",1)~ + change2
+ ~HaveKnownSpellRES("c0wl108")~ + @16 /* Darkness */ DO ~ApplySpellRES("c0wl108x",Myself) SetGlobal("ChangeInvocation","LOCALS",1) IncrementGlobal("C0WLSP1","LOCALS",1)~ + change2
+ ~HaveKnownSpellRES("c0wl109")~ + @17 /* Entropic Warding */ DO ~ApplySpellRES("c0wl109x",Myself) SetGlobal("ChangeInvocation","LOCALS",1) IncrementGlobal("C0WLSP1","LOCALS",1)~ + change2
+ ~HaveKnownSpellRES("c0wl110")~ + @18 /* Leaps and Bounds */ DO ~ApplySpellRES("c0wl110x",Myself) SetGlobal("ChangeInvocation","LOCALS",1) IncrementGlobal("C0WLSP1","LOCALS",1)~ + change2
+ ~HaveKnownSpellRES("c0wl111")~ + @19 /* See the Unseen */ DO ~ApplySpellRES("c0wl111x",Myself) SetGlobal("ChangeInvocation","LOCALS",1) IncrementGlobal("C0WLSP1","LOCALS",1)~ + change2
END

IF ~~ change.lesser
SAY @20 /* Choose one Lesser Invocation: */
+ ~HaveKnownSpellRES("c0wl201")~ + @21 /* Beshadowed Blast */ DO ~ApplySpellRES("c0wl201x",Myself) SetGlobal("ChangeInvocation","LOCALS",1) IncrementGlobal("C0WLSP2","LOCALS",1)~ + change2
+ ~HaveKnownSpellRES("c0wl202")~ + @22 /* Brimstone Blast */ DO ~ApplySpellRES("c0wl202x",Myself) SetGlobal("ChangeInvocation","LOCALS",1) IncrementGlobal("C0WLSP2","LOCALS",1)~ + change2
+ ~HaveKnownSpellRES("c0wl203")~ + @23 /* Hellrime Blast */ DO ~ApplySpellRES("c0wl203x",Myself) SetGlobal("ChangeInvocation","LOCALS",1) IncrementGlobal("C0WLSP2","LOCALS",1)~ + change2
+ ~HaveKnownSpellRES("c0wl204")~ + @24 /* Charm */ DO ~ApplySpellRES("c0wl204x",Myself) SetGlobal("ChangeInvocation","LOCALS",1) IncrementGlobal("C0WLSP2","LOCALS",1)~ + change2
+ ~HaveKnownSpellRES("c0wl205")~ + @25 /* Curse of Despair */ DO ~ApplySpellRES("c0wl205x",Myself) SetGlobal("ChangeInvocation","LOCALS",1) IncrementGlobal("C0WLSP2","LOCALS",1)~ + change2
+ ~HaveKnownSpellRES("c0wl206")~ + @26 /* Dread Seizure */ DO ~ApplySpellRES("c0wl206x",Myself) SetGlobal("ChangeInvocation","LOCALS",1) IncrementGlobal("C0WLSP2","LOCALS",1)~ + change2
+ ~HaveKnownSpellRES("c0wl207")~ + @27 /* Flee the Scene */ DO ~ApplySpellRES("c0wl207x",Myself) SetGlobal("ChangeInvocation","LOCALS",1) IncrementGlobal("C0WLSP2","LOCALS",1)~ + change2
+ ~HaveKnownSpellRES("c0wl208")~ + @28 /* The Dead Walk */ DO ~ApplySpellRES("c0wl208x",Myself) SetGlobal("ChangeInvocation","LOCALS",1) IncrementGlobal("C0WLSP2","LOCALS",1)~ + change2
+ ~HaveKnownSpellRES("c0wl209")~ + @29 /* Voracious Dispelling */ DO ~ApplySpellRES("c0wl209x",Myself) SetGlobal("ChangeInvocation","LOCALS",1) IncrementGlobal("C0WLSP2","LOCALS",1)~ + change2
+ ~HaveKnownSpellRES("c0wl210")~ + @30 /* Walk Unseen */ DO ~ApplySpellRES("c0wl210x",Myself) SetGlobal("ChangeInvocation","LOCALS",1) IncrementGlobal("C0WLSP2","LOCALS",1)~ + change2
END

IF ~~ change.greater
SAY @31 /* Choose one Greater Invocation: */
+ ~HaveKnownSpellRES("c0wl301")~ + @32 /* Bewitching Blast */ DO ~ApplySpellRES("c0wl301x",Myself) SetGlobal("ChangeInvocation","LOCALS",1) IncrementGlobal("C0WLSP3","LOCALS",1)~ + change2
+ ~HaveKnownSpellRES("c0wl302")~ + @33 /* Electrifying Blast */ DO ~ApplySpellRES("c0wl302x",Myself) SetGlobal("ChangeInvocation","LOCALS",1) IncrementGlobal("C0WLSP3","LOCALS",1)~ + change2
+ ~HaveKnownSpellRES("c0wl303")~ + @34 /* Noxious Blast */ DO ~ApplySpellRES("c0wl303x",Myself) SetGlobal("ChangeInvocation","LOCALS",1) IncrementGlobal("C0WLSP3","LOCALS",1)~ + change2
+ ~HaveKnownSpellRES("c0wl304")~ + @35 /* Vitriolic Blast */ DO ~ApplySpellRES("c0wl304x",Myself) SetGlobal("ChangeInvocation","LOCALS",1) IncrementGlobal("C0WLSP3","LOCALS",1)~ + change2
+ ~HaveKnownSpellRES("c0wl305")~ + @36 /* Chilling Tentacles */ DO ~ApplySpellRES("c0wl305x",Myself) SetGlobal("ChangeInvocation","LOCALS",1) IncrementGlobal("C0WLSP3","LOCALS",1)~ + change2
+ ~HaveKnownSpellRES("c0wl306")~ + @37 /* Devour Magic */ DO ~ApplySpellRES("c0wl306x",Myself) SetGlobal("ChangeInvocation","LOCALS",1) IncrementGlobal("C0WLSP3","LOCALS",1)~ + change2
+ ~HaveKnownSpellRES("c0wl307")~ + @38 /* Tenacious Plague */ DO ~ApplySpellRES("c0wl307x",Myself) SetGlobal("ChangeInvocation","LOCALS",1) IncrementGlobal("C0WLSP3","LOCALS",1)~ + change2
+ ~HaveKnownSpellRES("c0wl308")~ + @39 /* Wall of Perilous Flame */ DO ~ApplySpellRES("c0wl308x",Myself) SetGlobal("ChangeInvocation","LOCALS",1) IncrementGlobal("C0WLSP3","LOCALS",1)~ + change2
END

IF ~~ change.dark
SAY @40 /* Choose one Dark Invocation: */
+ ~HaveKnownSpellRES("c0wl401")~ + @41 /* Binding Blast */ DO ~ApplySpellRES("c0wl401x",Myself) SetGlobal("ChangeInvocation","LOCALS",1) IncrementGlobal("C0WLSP4","LOCALS",1)~ + change2
+ ~HaveKnownSpellRES("c0wl402")~ + @42 /* Utterdark Blast */ DO ~ApplySpellRES("c0wl402x",Myself) SetGlobal("ChangeInvocation","LOCALS",1) IncrementGlobal("C0WLSP4","LOCALS",1)~ + change2
+ ~HaveKnownSpellRES("c0wl403")~ + @43 /* Dark Foresight */ DO ~ApplySpellRES("c0wl403x",Myself) SetGlobal("ChangeInvocation","LOCALS",1) IncrementGlobal("C0WLSP4","LOCALS",1)~ + change2
+ ~HaveKnownSpellRES("c0wl404")~ + @44 /* Retributive Invisibility */ DO ~ApplySpellRES("c0wl404x",Myself) SetGlobal("ChangeInvocation","LOCALS",1) IncrementGlobal("C0WLSP4","LOCALS",1)~ + change2
+ ~HaveKnownSpellRES("c0wl405")~ + @45 /* Word of Changing */ DO ~ApplySpellRES("c0wl405x",Myself) SetGlobal("ChangeInvocation","LOCALS",1) IncrementGlobal("C0WLSP4","LOCALS",1)~ + change2
END

IF ~~ change2
SAY @46 /* Invocation removed. */
IF ~OR(5)
!Global("C0WLSP1","LOCALS",0)
!Global("C0WLSP2","LOCALS",0)
!Global("C0WLSP3","LOCALS",0)
!Global("C0WLSP4","LOCALS",0)
Global("ChangeInvocation","LOCALS",0)~ DO ~StartDialogOverride("c0wltalk",Myself)~ EXIT
IF ~!Global("ChangeInvocation","LOCALS",0)
Global("C0WLSP1","LOCALS",0)
Global("C0WLSP2","LOCALS",0)
Global("C0WLSP3","LOCALS",0)
Global("C0WLSP4","LOCALS",0)
Global("C0WLSP5","LOCALS",0)~ DO ~SetGlobal("ChangeInvocation","LOCALS",0) ClearAllActions()~ EXIT
END

IF ~~ learn
SAY @0 /* Choose a grade of invocation: */
+ ~GlobalGT("C0WLSP1","LOCALS",0)
OR(8)
!HaveKnownSpellRES("c0wl104")
!HaveKnownSpellRES("c0wl105")
!HaveKnownSpellRES("c0wl106")
!HaveKnownSpellRES("c0wl107")
!HaveKnownSpellRES("c0wl108")
!HaveKnownSpellRES("c0wl109")
!HaveKnownSpellRES("c0wl110")
!HaveKnownSpellRES("c0wl111")~ + @1 /* Least */ + least
+ ~GlobalGT("C0WLSP2","LOCALS",0)
OR(10)
!HaveKnownSpellRES("c0wl201")
!HaveKnownSpellRES("c0wl202")
!HaveKnownSpellRES("c0wl203")
!HaveKnownSpellRES("c0wl204")
!HaveKnownSpellRES("c0wl205")
!HaveKnownSpellRES("c0wl206")
!HaveKnownSpellRES("c0wl207")
!HaveKnownSpellRES("c0wl208")
!HaveKnownSpellRES("c0wl209")
!HaveKnownSpellRES("c0wl210")~ + @2 /* Lesser */ + lesser
+ ~GlobalGT("C0WLSP3","LOCALS",0)
OR(8)
!HaveKnownSpellRES("c0wl301")
!HaveKnownSpellRES("c0wl302")
!HaveKnownSpellRES("c0wl303")
!HaveKnownSpellRES("c0wl304")
!HaveKnownSpellRES("c0wl305")
!HaveKnownSpellRES("c0wl306")
!HaveKnownSpellRES("c0wl307")
!HaveKnownSpellRES("c0wl308")~ + @3 /* Greater */ + greater
+ ~GlobalGT("C0WLSP4","LOCALS",0)
OR(5)
!HaveKnownSpellRES("c0wl401")
!HaveKnownSpellRES("c0wl402")
!HaveKnownSpellRES("c0wl403")
!HaveKnownSpellRES("c0wl404")
!HaveKnownSpellRES("c0wl405")~ + @4 /* Dark */ + dark
END

IF ~~ least
SAY @11 /* Choose one Least Invocation: */
+ ~!HaveKnownSpellRES("c0wl104")~ + @12 /* Beguiling Influence */ + 1.4
+ ~!HaveKnownSpellRES("c0wl105")~ + @13 /* Dark One's Own Luck */ + 1.5
+ ~!HaveKnownSpellRES("c0wl106")~ + @14 /* Draining Blast */ + 1.6
+ ~!HaveKnownSpellRES("c0wl107")~ + @15 /* Frightful Blast */ + 1.7
+ ~!HaveKnownSpellRES("c0wl108")~ + @16 /* Darkness */ + 1.8
+ ~!HaveKnownSpellRES("c0wl109")~ + @17 /* Entropic Warding */ + 1.9
+ ~!HaveKnownSpellRES("c0wl110")~ + @18 /* Leaps and Bounds */ + 1.10
+ ~!HaveKnownSpellRES("c0wl111")~ + @19 /* See the Unseen */ + 1.11
END

IF ~~ lesser
SAY @20 /* Choose one Lesser Invocation: */
+ ~!HaveKnownSpellRES("c0wl201")~ + @21 /* Beshadowed Blast */ + 2.1
+ ~!HaveKnownSpellRES("c0wl202")~ + @22 /* Brimstone Blast */ + 2.2
+ ~!HaveKnownSpellRES("c0wl203")~ + @23 /* Hellrime Blast */ + 2.3
+ ~!HaveKnownSpellRES("c0wl204")~ + @24 /* Charm */ + 2.4
+ ~!HaveKnownSpellRES("c0wl205")~ + @25 /* Curse of Despair */ + 2.5
+ ~!HaveKnownSpellRES("c0wl206")~ + @26 /* Dread Seizure */ + 2.6
+ ~!HaveKnownSpellRES("c0wl207")~ + @27 /* Flee the Scene */ + 2.7
+ ~!HaveKnownSpellRES("c0wl208")~ + @28 /* The Dead Walk */ + 2.8
+ ~!HaveKnownSpellRES("c0wl209")~ + @29 /* Voracious Dispelling */ + 2.9
+ ~!HaveKnownSpellRES("c0wl210")~ + @30 /* Walk Unseen */ + 2.10
END

IF ~~ greater
SAY @31 /* Choose one Greater Invocation: */
+ ~!HaveKnownSpellRES("c0wl301")~ + @32 /* Bewitching Blast */ + 3.1
+ ~!HaveKnownSpellRES("c0wl302")~ + @33 /* Electrifying Blast */ + 3.2
+ ~!HaveKnownSpellRES("c0wl303")~ + @34 /* Noxious Blast */ + 3.3
+ ~!HaveKnownSpellRES("c0wl304")~ + @35 /* Vitriolic Blast */ + 3.4
+ ~!HaveKnownSpellRES("c0wl305")~ + @36 /* Chilling Tentacles */ + 3.5
+ ~!HaveKnownSpellRES("c0wl306")~ + @37 /* Devour Magic */ + 3.6
+ ~!HaveKnownSpellRES("c0wl307")~ + @38 /* Tenacious Plague */ + 3.7
+ ~!HaveKnownSpellRES("c0wl308")~ + @39 /* Wall of Perilous Flame */ + 3.8
END

IF ~~ dark
SAY @40 /* Choose one Dark Invocation: */
+ ~!HaveKnownSpellRES("c0wl401")~ + @41 /* Binding Blast */ + 4.1
+ ~!HaveKnownSpellRES("c0wl402")~ + @42 /* Utterdark Blast */ + 4.2
+ ~!HaveKnownSpellRES("c0wl403")~ + @43 /* Dark Foresight */ + 4.3
+ ~!HaveKnownSpellRES("c0wl404")~ + @44 /* Retributive Invisibility */ + 4.4
+ ~!HaveKnownSpellRES("c0wl405")~ + @45 /* Word of Changing */ + 4.5
END

IF ~~ 1.4
SAY @47 /* BEGUILING INFLUENCE
(Enchantment/Charm) 

Power: Least
Effective Spell Level: 2
Range: 0
Duration: 8 hours
Casting Time: 1
Area of Effect: the caster
Saving Throw: None

This invocation allows the warlock to beguile and bewitch <PRO_HISHER> foes, gaining two points of Charisma. This bonus increases to +4 at 8th level and +6 at 16th level. */
++ @48 /* Learn spell. */ DO ~IncrementGlobal("C0WLSP1","LOCALS",-1) AddSpecialAbility("c0wl104")~ + NEXT
++ @49 /* Return to spell selection. */ + learn
END

IF ~~ 1.5
SAY @50 /* DARK ONE'S OWN LUCK
(Enchantment/Charm)

Power: Least
Effective Spell Level: 2
Range: 0
Duration: 8 hours
Casting Time: 1
Area of Effect: the caster
Saving Throw: None

The warlock who possesses this invocation is favored by the dark powers. For the duration, the warlock gains a +2 bonus to Luck and all Saving Throws. An additional +1 bonus is gained for every two points of the warlock's Charisma above 16. */
++ @48 /* Learn spell. */ DO ~IncrementGlobal("C0WLSP1","LOCALS",-1) AddSpecialAbility("c0wl105")~ + NEXT
++ @49 /* Return to spell selection. */ + learn
END

IF ~~ 1.6
SAY @51 /* DRAINING BLAST
(Eldritch Essence) 

Power: Least
Effective Spell Level: 2
Range: Special
Duration: 3 rounds
Casting Time: 1
Area of Effect: Blast Shape
Saving Throw: Neg.

This eldritch essence invocation allows the warlock to change <PRO_HISHER> eldritch blast into a draining blast. The draining blast reduces the Eldritch Blast's damage by half, but forces any creature struck to make a Save vs. Spells or become slowed. A slowed creature moves and attacks at a drastically reduced rate, taking a -1 penalty on attack rolls, AC, and saving throws and moving at half its normal speed. Multiple slow effects don't stack. This invocation counters and dispels haste. */
++ @48 /* Learn spell. */ DO ~IncrementGlobal("C0WLSP1","LOCALS",-1) AddSpecialAbility("c0wl106")~ + NEXT
++ @49 /* Return to spell selection. */ + learn
END

IF ~~ 1.7
SAY @52 /* FRIGHTFUL BLAST
(Eldritch Essence) 

Power: Least
Effective Spell Level: 2
Range: Special
Duration: 1 turn
Casting Time: 1
Area of Effect: Blast Shape
Saving Throw: Neg.

This eldritch essence invocation allows the warlock to change <PRO_HISHER> eldritch blast into a frightful blast. The frightful blast reduces the Eldritch Blast's damage by half, but forces any creature struck to make a Save vs. Spells or become shaken for one turn, taking a -2 penalty to attack rolls, saving throws, and morale. Creatures with more than 6 HD gain a +4 bonus to their rolls to save. */
++ @48 /* Learn spell. */ DO ~IncrementGlobal("C0WLSP1","LOCALS",-1) AddSpecialAbility("c0wl107")~ + NEXT
++ @49 /* Return to spell selection. */ + learn
END

IF ~~ 1.8
SAY @53 /* DARKNESS
(Invocation/Evocation) 

Power: Least
Effective Spell Level: 1
Range: 0
Duration: 3 rounds
Casting Time: 4
Area of Effect: 20 ft.
Saving Throw: None

The warlock creates an area of deepest shadow at range in a 20-foot radius. All creatures in the area suffer a -4 penalty to hit rolls and greatly reduced vision range until they leave the area of effect. */
++ @48 /* Learn spell. */ DO ~IncrementGlobal("C0WLSP1","LOCALS",-1) AddSpecialAbility("c0wl108")~ + NEXT
++ @49 /* Return to spell selection. */ + learn
END

IF ~~ 1.9
SAY @54 /* ENTROPIC WARDING
(Abjuration) 

Power: Least
Effective Spell Level: 2
Range: 0
Duration: 1 turn/level
Casting Time: 6
Area of Effect: the caster
Saving Throw: None

A magical field appears around the warlock, glowing with a chaotic blast of multicolored hues. This field deflects incoming arrows, rays, and other ranged attacks. All missiles that require an attack roll to hit are made with a -4 penalty. Magically targeted missiles, such as Melf's Acid Arrow, are not affected. Additionally, the warlock's base Armor Class is set to 6 for the duration. */
++ @48 /* Learn spell. */ DO ~IncrementGlobal("C0WLSP1","LOCALS",-1) AddSpecialAbility("c0wl109")~ + NEXT
++ @49 /* Return to spell selection. */ + learn
END

IF ~~ 1.10
SAY @55 /* LEAPS AND BOUNDS
(Alteration) 

Power: Least
Effective Spell Level: 2
Range: 0
Duration: 8 hours
Casting Time: 1
Area of Effect: the caster
Saving Throw: None

This invocation grants the warlock amazing agility. For the duration of the spell, the warlock gains a +2 bonus to Dexterity and Armor Class. An additional +1 bonus is granted for every two points of the warlock's Charisma above 16. */
++ @48 /* Learn spell. */ DO ~IncrementGlobal("C0WLSP1","LOCALS",-1) AddSpecialAbility("c0wl110")~ + NEXT
++ @49 /* Return to spell selection. */ + learn
END

IF ~~ 1.11
SAY @56 /* SEE THE UNSEEN
(Divination) 

Power: Least
Effective Spell Level: 2
Range: 0
Duration: 5 rounds
Casting Time: 1
Area of Effect: the caster
Saving Throw: None

With the invocation, the warlock may activate great powers of vision, allowing <PRO_HIMHER> to see invisible creatures and hidden traps. <PRO_HESHE> also gains infravision for the duration. */
++ @48 /* Learn spell. */ DO ~IncrementGlobal("C0WLSP1","LOCALS",-1) AddSpecialAbility("c0wl111")~ + NEXT
++ @49 /* Return to spell selection. */ + learn
END

IF ~~ 2.1
SAY @57 /* BESHADOWED BLAST
(Eldritch Essence) 

Power: Lesser
Effective Spell Level: 4
Range: Special
Duration: 1 round
Casting Time: 1
Area of Effect: Blast Shape
Saving Throw: Neg.

This eldritch essence invocation allows the warlock to change <PRO_HISHER> eldritch blast into a beshadowed blast. The beshadowed blast reduces the Eldritch Blast's damage to d4, but forces any creature struck to make a Save vs. Death or become blinded for one round, receiving a -4 penalty to attack rolls and Armor Class as well as halved movement rate. */
++ @48 /* Learn spell. */ DO ~IncrementGlobal("C0WLSP2","LOCALS",-1) AddSpecialAbility("c0wl201")~ + NEXT
++ @49 /* Return to spell selection. */ + learn
END

IF ~~ 2.2
SAY @58 /* BRIMSTONE BLAST
(Eldritch Essence) 

Power: Lesser
Effective Spell Level: 4
Range: Special
Duration: 3 rounds
Casting Time: 1
Area of Effect: Blast Shape
Saving Throw: Neg.

This eldritch essence invocation allows the warlock to change <PRO_HISHER> eldritch blast into a brimstone blast. A brimstone blast deals fire damage. Any creature struck by a brimstone blast must succeed on a Save vs. Breath or catch on fire, taking 2d6 points of fire damage per round until the duration expires. A creature burning in this way never takes more than 2d6 points of fire damage in a round, even if it has been hit by more than one brimstone blast. */
++ @48 /* Learn spell. */ DO ~IncrementGlobal("C0WLSP2","LOCALS",-1) AddSpecialAbility("c0wl202")~ + NEXT
++ @49 /* Return to spell selection. */ + learn
END

IF ~~ 2.3
SAY @59 /* HELLRIME BLAST
(Eldritch Essence) 

Power: Lesser
Effective Spell Level: 4
Range: Special
Duration: 1 turn
Casting Time: 1
Area of Effect: Blast Shape
Saving Throw: Neg.

This eldritch essence invocation allows the warlock to change <PRO_HISHER> eldritch blast into a hellrime blast. A hellrime blast deals cold damage. Any creature struck by the attack must make a Save vs. Death or take a -4 penalty to Dexterity for one turn. The Dexterity penalties from multiple hellrime blasts do not stack. */
++ @48 /* Learn spell. */ DO ~IncrementGlobal("C0WLSP2","LOCALS",-1) AddSpecialAbility("c0wl203")~ + NEXT
++ @49 /* Return to spell selection. */ + learn
END

IF ~~ 2.4
SAY @60 /* CHARM
(Enchantment/Charm) 

Power: Lesser
Effective Spell Level: 4
Range: Special
Duration: 5 rounds
Casting Time: 5
Area of Effect: One creature
Saving Throw: None

This invocation enables the warlock to control the actions of any creature while the spell is in effect. This control is maintained through a telepathic link between the warlock and the victim. The creature must succeed on a Save vs. Spells or instantly come to regard you as a trusted friend, willing to follow <PRO_HISHER> commands. This spell is not regarded as hostile and targets are normally unaware of being enchanted after the effects have expired. */
++ @48 /* Learn spell. */ DO ~IncrementGlobal("C0WLSP2","LOCALS",-1) AddSpecialAbility("c0wl204")~ + NEXT
++ @49 /* Return to spell selection. */ + learn
END

IF ~~ 2.5
SAY @61 /* CURSE OF DESPAIR
(Enchantment/Charm) 

Power: Lesser
Effective Spell Level: 4
Range: Touch
Duration: Permanent
Casting Time: 4
Area of Effect: One creature
Saving Throw: Special

This invocation bestows a permanent curse upon a touched opponent, lowering all the target's ability scores by 3 if the target fails a Save vs. Spells permanently until cured via a Remove Curse spell. Even if the save against this invocation succeeds, the target takes a -1 penalty on attack rolls for one turn. This curse does not stack with itself. */
++ @48 /* Learn spell. */ DO ~IncrementGlobal("C0WLSP2","LOCALS",-1) AddSpecialAbility("c0wl205")~ + NEXT
++ @49 /* Return to spell selection. */ + learn
END

IF ~~ 2.6
SAY @62 /* DREAD SEIZURE
(Enchantment/Charm) 

Power: Lesser
Effective Spell Level: 4
Range: Visual range of the caster
Duration: 3 rounds
Casting Time: 2
Area of Effect: One creature
Saving Throw: Neg.

The warlock speaks a word that sends wracking pain through the limbs of a single target creature. If the target fails a Save vs. Death, it suffers a -3 penalty to attack rolls and Armor Class as well as 50% penalty to movement speed for 3 rounds. */
++ @48 /* Learn spell. */ DO ~IncrementGlobal("C0WLSP2","LOCALS",-1) AddSpecialAbility("c0wl206")~ + NEXT
++ @49 /* Return to spell selection. */ + learn
END

IF ~~ 2.7
SAY @63 /* FLEE THE SCENE
(Alteration) 

Power: Lesser
Effective Spell Level: 4
Range: Visual range of the caster
Duration: 1 round
Casting Time: 1
Area of Effect: the caster
Saving Throw: None

This invocation allows the warlock to make a quick escape when necessary. Upon casting this invocation, the warlock teleports to a location within <PRO_HISHER> vision range, becoming invisible and leaving an illusion of <PRO_HIMHER>self behind for one round. */
++ @48 /* Learn spell. */ DO ~IncrementGlobal("C0WLSP2","LOCALS",-1) AddSpecialAbility("c0wl207")~ + NEXT
++ @49 /* Return to spell selection. */ + learn
END

IF ~~ 2.8
SAY @64 /* THE DEAD WALK
(Necromancy) 

Power: Lesser
Effective Spell Level: 5
Range: Visual range of the caster
Duration: 1 hour
Casting Time: 9
Area of Effect: the caster
Saving Throw: None

The warlock can summon undead creatures with <PRO_HISHER> infernal power to serve <PRO_HIMHER>. This invocation lasts for one hour. The strength and number of undead created is dependent on the warlock's level:

  1st – 6th: a 3 HD skeleton warrior wielding a long sword.
  7th – 10th: a 5 HD skeleton warrior wielding a long sword +1.
  11th – 14th: a 7 HD skeleton warrior wielding a bastard sword +1.
  15th and up: a 9 HD skeleton warrior wielding a two-handed sword +1.
  
The skeleton warrior can follow the caster, remain in an area and attack any creature entering the place, etc. It remains animated until it is destroyed in combat, one hour passes, or it is turned. This spell cannot be dispelled. */
++ @48 /* Learn spell. */ DO ~IncrementGlobal("C0WLSP2","LOCALS",-1) AddSpecialAbility("c0wl208")~ + NEXT
++ @49 /* Return to spell selection. */ + learn
END

IF ~~ 2.9
SAY @65 /* VORACIOUS DISPELLING
(Abjuration) 

Power: Lesser
Effective Spell Level: 4
Range: Touch
Duration: Instant
Casting Time: 3
Area of Effect: One creature
Saving Throw: None

This invocation attempts to dispel magical effects upon a target creature. This includes effects given from spells, potions, and certain magical items such as wands. It does not, however, affect enchanted magical items. The chance of the dispel succeeding is determined by the level of the warlock and the level of the magic being dispelled. The base chance of successfully dispelling is 50%. For every level that the caster of Voracious Dispelling is above the original caster, <PRO_HISHER> chance of success increases by 5%. For every level that the caster of Voracious Dispelling is below the original caster, <PRO_HISHER> chance of success decreases by 10%. However, despite the difference in levels, there is always at least a 1% chance of success or failure. Thus, if a caster is 10 levels higher than the magic <PRO_HESHE> is trying to dispel, there is only a 1% chance of failure. Similarly, if the warlock is 4 levels lower than the magic <PRO_HESHE> is trying to dispel, there is only a 10% chance of success. Intuitively, this spell is almost useless if the target is 5 or more levels higher than the warlock.

Additionally, regardless of whether the dispel is successful, the target takes one point of magical damage per two levels of the warlock. */
++ @48 /* Learn spell. */ DO ~IncrementGlobal("C0WLSP2","LOCALS",-1) AddSpecialAbility("c0wl209")~ + NEXT
++ @49 /* Return to spell selection. */ + learn
END

IF ~~ 2.10
SAY @66 /* WALK UNSEEN
(Illusion/Phantasm) 

Power: Lesser
Effective Spell Level: 2
Range: Self
Duration: 24 hours
Casting Time: 2
Area of Effect: the caster
Saving Throw: None

The warlock may cast this invocation to become invisible. The effect ends immediately if <PRO_HESHE> attacks or casts a spell. Otherwise, the effect lasts 24 hours. */
++ @48 /* Learn spell. */ DO ~IncrementGlobal("C0WLSP2","LOCALS",-1) AddSpecialAbility("c0wl210")~ + NEXT
++ @49 /* Return to spell selection. */ + learn
END

IF ~~ 3.1
SAY @67 /* BEWITCHING BLAST
(Eldritch Essence) 

Power: Greater
Effective Spell Level: 4
Range: Special
Duration: 3 rounds
Casting Time: 1
Area of Effect: Blast Shape
Saving Throw: Neg.

This eldritch essence invocation allows the warlock to change <PRO_HISHER> eldritch blast into a bewitching blast. The bewitching blast reduces the Eldritch Blast's damage to d4, but forces any creature struck to make a Save vs. Spells at -2 or become confused for three rounds. A confused target will either wander randomly, attack a random nearby creature (even allies), or simply stand still. */
++ @48 /* Learn spell. */ DO ~IncrementGlobal("C0WLSP3","LOCALS",-1) AddSpecialAbility("c0wl301")~ + NEXT
++ @49 /* Return to spell selection. */ + learn
END

IF ~~ 3.2
SAY @68 /* ELECTRIFYING BLAST
(Eldritch Essence) 

Power: Greater
Effective Spell Level: 4
Range: Special
Duration: 1 round
Casting Time: 1
Area of Effect: Blast Shape
Saving Throw: Neg.

This eldritch essence invocation allows the warlock to change <PRO_HISHER> eldritch blast into an electrifying blast. An electrifying blast deals electrical damage. Any creature struck by the attack must make a Save vs. Breath at -2 become paralyzed for one round. Creatures immune to electrical damage are not affected. */
++ @48 /* Learn spell. */ DO ~IncrementGlobal("C0WLSP3","LOCALS",-1) AddSpecialAbility("c0wl302")~ + NEXT
++ @49 /* Return to spell selection. */ + learn
END

IF ~~ 3.3
SAY @69 /* NOXIOUS BLAST
(Eldritch Essence) 

Power: Greater
Effective Spell Level: 6
Range: Special
Duration: 1 turn
Casting Time: 1
Area of Effect: Blast Shape
Saving Throw: Neg.

This eldritch essence invocation allows the warlock to change <PRO_HISHER> eldritch blast into a noxious blast. A noxious blast deals poison damage. Any creature struck by the attack must make a Save vs. Death at -2 or suffer a -2 penalty to all attributes and a -4 penalty to all saving throws for one turn. The effects do not stack, and creatures immune to poison are not affected. */
++ @48 /* Learn spell. */ DO ~IncrementGlobal("C0WLSP3","LOCALS",-1) AddSpecialAbility("c0wl303")~ + NEXT
++ @49 /* Return to spell selection. */ + learn
END

IF ~~ 3.4
SAY @70 /* VITRIOLIC BLAST
(Eldritch Essence) 

Power: Greater
Effective Spell Level: 6
Range: Special
Duration: 3 rounds
Casting Time: 1
Area of Effect: Blast Shape
Saving Throw: None

This eldritch essence invocation allows the warlock to change <PRO_HISHER> eldritch blast into a vitriolic blast. A vitriolic blast deals acidic damage and is formed from conjured acid, making it different from all other eldritch essences because it ignores Magic Resistance. Creatures struck by a vitriolic blast automatically take an extra 2d6 points of acid damage on following rounds. A creature taking damage in this way never takes more than 2d6 points of acid damage in a round, even if it has been hit by more than one vitriolic blast. Creatures immune to acid damage are not affected. */
++ @48 /* Learn spell. */ DO ~IncrementGlobal("C0WLSP3","LOCALS",-1) AddSpecialAbility("c0wl304")~ + NEXT
++ @49 /* Return to spell selection. */ + learn
END

IF ~~ 3.5
SAY @71 /* CHILLING TENTACLES
(Conjuration/Summoning)

Power: Greater
Effective Spell Level: 5
Range: 40 ft.
Duration: 4 rounds
Casting Time: 6
Area of Effect: 15-ft. radius
Saving Throw: None

This invocation allows you to conjure forth a field of soul-chilling tentacles that ooze from the ground, groping for victims. For every round that a creature is caught in the area of effect, it suffers an attack from tentacles, suffering 1d6+4 crushing damage and becoming paralyzed for one round on a failed Save vs. Breath. In addition, each creature within the area of the invocation takes 2d6 points of cold damage each round regardless of whether they are struck by any tentacles. The tentacles last for 4 rounds. */
++ @48 /* Learn spell. */ DO ~IncrementGlobal("C0WLSP3","LOCALS",-1) AddSpecialAbility("c0wl305")~ + NEXT
++ @49 /* Return to spell selection. */ + learn
END

IF ~~ 3.6
SAY @72 /* DEVOUR MAGIC
(Abjuration)

Power: Greater
Effective Spell Level: 6
Range: 40 ft.
Duration: Instant
Casting Time: 3
Area of Effect: 15-ft. radius
Saving Throw: None

This invocation dispels the magical effects upon any enemies within the area. This includes effects given from spells, potions, and certain magical items such as wands. It does not, however, affect enchanted magical items. The chance of the dispel succeeding is determined by the level of the warlock and the level of the magic being dispelled. The base chance of successfully dispelling is 50%. For every level that the caster of Devour Magic is above the original caster, <PRO_HISHER> chance of success increases by 5%. For every level that the caster of Devour Magic is below the original caster, <PRO_HISHER> chance of success decreases by 10%. However, despite the difference in levels, there is always at least a 1% chance of success or failure. Thus, if a caster is 10 levels higher than the magic <PRO_HESHE> is trying to dispel, there is only a 1% chance of failure. Similarly, if the caster is 4 levels lower than the magic <PRO_HESHE> is trying to dispel, there is only a 10% chance of success. Intuitively, this spell is almost useless if the target is 5 or more levels higher than the warlock.

Additionally, for each enemy affected by Devour Magic, the warlock temporarily gains two extra hit points to <PRO_HISHER> maximum for four rounds. */
++ @48 /* Learn spell. */ DO ~IncrementGlobal("C0WLSP3","LOCALS",-1) AddSpecialAbility("c0wl306")~ + NEXT
++ @49 /* Return to spell selection. */ + learn
END

IF ~~ 3.7
SAY @73 /* TENACIOUS PLAGUE
(Conjuration/Summoning)

Power: Greater
Effective Spell Level: 6
Range: Visual range of the caster
Duration: 3 rounds
Casting Time: 6
Area of Effect: 15 ft. radius
Saving Throw: None

The Summon Insects spell attracts a cloud or swarm of normal insects to that jump first to the target, then to the nearest allies of the target. This swarm gathers at a point chosen by the caster within the spell's range and attacks any single creature the caster points to. Each victim may make a Saving Throw vs. Breath Weapon with a -4 penalty to escape the swarm; otherwise, they receive 1 point of piercing damage and 1d4 points of magical damage every 2 seconds for the duration of the spell. Moreover, each victim fights with a -2 penalty to <PRO_HISHER> attack roll and a -2 penalty to <PRO_HISHER> Armor Class. The swarm will repeatedly bite the target, making it very difficult to cast spells (50% chance of spell failure). */
++ @48 /* Learn spell. */ DO ~IncrementGlobal("C0WLSP3","LOCALS",-1) AddSpecialAbility("c0wl307")~ + NEXT
++ @49 /* Return to spell selection. */ + learn
END

IF ~~ 3.8
SAY @74 /* WALL OF PERILOUS FLAME
(Invocation/Evocation)

Power: Greater
Effective Spell Level: 6
Range: Visual range of the caster
Duration: 3 rounds
Casting Time: 6
Area of Effect: 15 ft. radius
Saving Throw: None

You conjure a curtain of fire that deals 2d6 points of damage to any creature that attempts to pass through it. Half the wall's fire damage results from supernatural power and deals magical damage, therefore not being subject to being reduced by resistance to fire. The curtain of flame lasts for 3 rounds before dissipating. */
++ @48 /* Learn spell. */ DO ~IncrementGlobal("C0WLSP3","LOCALS",-1) AddSpecialAbility("c0wl308")~ + NEXT
++ @49 /* Return to spell selection. */ + learn
END

IF ~~ 4.1
SAY @75 /* BINDING BLAST
(Eldritch Essence) 

Power: Dark
Effective Spell Level: 7
Range: Special
Duration: 1 round
Casting Time: 1
Area of Effect: Blast Shape
Saving Throw: None

This eldritch essence invocation allows the warlock to change <PRO_HISHER> eldritch blast into a binding blast. The binding blast reduces the Eldritch Blast's damage to d4, but forces any creature struck to make a Save vs. Spells at -4 or be stunned for 1 round. */
++ @48 /* Learn spell. */ DO ~IncrementGlobal("C0WLSP4","LOCALS",-1) AddSpecialAbility("c0wl401")~ + NEXT
++ @49 /* Return to spell selection. */ + learn
END

IF ~~ 4.2
SAY @76 /* UTTERDARK BLAST
(Eldritch Essence) 

Power: Dark
Effective Spell Level: 8
Range: Special
Duration: 1 hour
Casting Time: 1
Area of Effect: Blast Shape
Saving Throw: None

This eldritch essence invocation allows you to change your eldritch blast into an utterdark blast. An utterdark blast reduces the Eldritch Blast's damage to d4, but drains hit points from the target and transfers it to the caster. Any creature struck by the attack must also make a Save vs. Death or lose four levels for one hour. If a target ever has as many negative levels as Hit Dice, it dies. The effects of this invocation do not stack with further applications of utterdark blast. */
++ @48 /* Learn spell. */ DO ~IncrementGlobal("C0WLSP4","LOCALS",-1) AddSpecialAbility("c0wl402")~ + NEXT
++ @49 /* Return to spell selection. */ + learn
END

IF ~~ 4.3
SAY @77 /* DARK FORESIGHT
(Divination) 

Power: Dark
Effective Spell Level: 9
Range: Self
Duration: 2 rounds
Casting Time: 1
Area of Effect: the caster
Saving Throw: None

The warlock's dark powers allow <PRO_HIMHER> to glimpse the future, granting a +10 bonus to Armor Class, +5 bonus to all saving throws, 20% damage resistance and immunity to backstab. The effects of this invocation are non-cumulative. */
++ @48 /* Learn spell. */ DO ~IncrementGlobal("C0WLSP4","LOCALS",-1) AddSpecialAbility("c0wl403")~ + NEXT
++ @49 /* Return to spell selection. */ + learn
END

IF ~~ 4.4
SAY @78 /* RETRIBUTIVE INVISIBILITY
(Illusion/Phantasm) 

Power: Dark
Effective Spell Level: 6
Range: Self
Duration: 3 rounds
Casting Time: 1
Area of Effect: the caster
Saving Throw: Special

This invocation grants the warlock the effects of Improved Invisibility for three rounds. The invisibility cannot be dispelled, and at the end of its duration, a shock wave releases from the warlock's body in a small burst, dealing 4d6 magical damage to all nearby creatures and stunning them for one round. (Save vs. Death to avoid stun and half damage) */
++ @48 /* Learn spell. */ DO ~IncrementGlobal("C0WLSP4","LOCALS",-1) AddSpecialAbility("c0wl404")~ + NEXT
++ @49 /* Return to spell selection. */ + learn
END

IF ~~ 4.5
SAY @79 /* WORD OF CHANGING
(Alteration) 

Power: Dark
Effective Spell Level: 5
Range: Self
Duration: 10 turns
Casting Time: 9
Area of Effect: the caster
Saving Throw: None

With this invocation, the warlock utters a powerful word that transforms him into a devilish being, often connected to whatever outsider granted the warlock <PRO_HISHER> fiendish powers. The warlock may not use invocations while transformed. */
++ @48 /* Learn spell. */ DO ~IncrementGlobal("C0WLSP4","LOCALS",-1) AddSpecialAbility("c0wl405")~ + NEXT
++ @49 /* Return to spell selection. */ + learn
END

IF ~~ NEXT
SAY @80 /* You reach out to the font of eldritch knowledge... */
= @81 /* You have learned a new invocation. */
IF ~OR(5)
!Global("C0WLSP1","LOCALS",0)
!Global("C0WLSP2","LOCALS",0)
!Global("C0WLSP3","LOCALS",0)
!Global("C0WLSP4","LOCALS",0)
Global("ChangeInvocation","LOCALS",0)~ DO ~StartDialogOverride("c0wltalk",Myself)~ EXIT
IF ~Global("C0WLSP1","LOCALS",0)
Global("C0WLSP2","LOCALS",0)
Global("C0WLSP3","LOCALS",0)
Global("C0WLSP4","LOCALS",0)
Global("C0WLSP5","LOCALS",0)
!Global("ChangeInvocation","LOCALS",0)~ DO ~SetGlobal("ChangeInvocation","LOCALS",0) ClearAllActions()~ EXIT
END