ScriptName BetterVampiresOptionsMenuScript Extends ActiveMagicEffect
;ScriptName BetterVampiresOptionsMenuScript Extends ObjectReference Conditional
;Script made by Brehanin2 ( http://www.nexusmods.com/skyrim/users/2893731/? ) for Better Vampires 6.6
;Modifications made by DRestoy
 
Armor Property MenuARMO Auto ; Playable apparel item

Message Property OptionsMenu00MESG Auto
Message Property OptionsMenu00MESGb Auto
Message Property OptionsMenu01MESG Auto
Message Property OptionsMenu01MESGb Auto
Message Property OptionsMenu01MESGc Auto
Message Property OptionsMenu02MESG Auto
Message Property OptionsMenu02MESGb Auto
Message Property OptionsMenu02MESGc Auto
Message Property OptionsMenu03MESG Auto
Message Property OptionsMenu03MESGb Auto
Message Property OptionsMenu04MESG Auto
Message Property OptionsMenu04MESGb Auto
Message Property OptionsMenu05MESG Auto
Message Property OptionsMenu05MESGb Auto
Message Property OptionsMenu05MESGc Auto
Message Property OptionsMenu06MESG Auto
Message Property OptionsMenu06MESGb Auto
Message Property OptionsMenu06MESGc Auto
Message Property OptionsMenu07MESG Auto
Message Property OptionsMenu07MESGb Auto
Message Property OptionsMenu08MESG Auto
Message Property OptionsMenu08MESGb Auto
Message Property OptionsMenu09MESG Auto
Message Property OptionsMenu09MESGb Auto
Message Property OptionsMenu10MESG Auto
Message Property OptionsMenu11MESG Auto
Message Property OptionsMenu12MESG Auto
Message Property OptionsMenu13MESG Auto
Message Property OptionsMenu13MESGb Auto
Message Property OptionsMenu13MESGc Auto
Message Property OptionsMenu14MESG Auto
Message Property OptionsMenu14MESGb Auto
Message Property OptionsMenu15MESG Auto
Message Property OptionsMenu15MESGb Auto
Message Property OptionsMenu16MESG Auto
Message Property OptionsMenu16MESGb Auto

Race Property DLC1VampireBeastRace Auto

Quest Property BetterVampiresInitializationQuest Auto

Actor Property Player Auto

Faction Property VampirePCFaction  Auto  
Faction Property VampirePCFamily  Auto 
Faction Property DummyFaction Auto

GlobalVariable Property VampireSunEffects Auto 
GlobalVariable Property VampireSunDamage Auto 
GlobalVariable Property VampireSunDamageSpecial Auto 
GlobalVariable Property VampireProgression Auto 
GlobalVariable Property CreateVampire Auto 
GlobalVariable Property VampireStageHated Auto
GlobalVariable Property VampireHunters Auto
GlobalVariable Property VampireRank Auto
GlobalVariable Property VampireRankProgression Auto
GlobalVariable Property VampireUpdateGameTime Auto
GlobalVariable Property VeilOfFearUseCount Auto
GlobalVariable Property VeilOfFearResetCounter Auto
GlobalVariable Property VampireStageGlobal Auto
GlobalVariable Property VampireNightEye Auto
GlobalVariable Property VampireCustomRace Auto
GlobalVariable Property VampireRevealAuras Auto
GlobalVariable Property VampireFeedOffDead Auto
GlobalVariable Property VampireDynamicStages Auto
GlobalVariable Property RECASTVampireBlink Auto
GlobalVariable Property RECASTVampireMistwalker Auto
GlobalVariable Property RECASTVampireUnholyGrasp Auto
GlobalVariable Property RECASTVampireDeflectLight Auto
GlobalVariable Property RECASTVampireDomination Auto
GlobalVariable Property RECASTVampireRaiseThrall Auto
GlobalVariable Property RECASTVampireCallCreature Auto
GlobalVariable Property RECASTVampireMindBlast Auto
GlobalVariable Property RECASTVampireInvokeFog Auto
GlobalVariable Property VampireUnholyGraspToggle Auto
GlobalVariable Property VampireDeflectLightToggle Auto
GlobalVariable Property VampireDominationToggle Auto
GlobalVariable Property VampireRaiseThrallToggle Auto
GlobalVariable Property VampireCallCreatureToggle Auto
GlobalVariable Property VampireMindBlastToggle Auto
GlobalVariable Property VampireInvokeFogToggle Auto

GlobalVariable Property VampireLightLevel Auto
GlobalVariable Property VampireLightLevelPenalties Auto
GlobalVariable Property VampireLightLevelRegen Auto
GlobalVariable Property VampireVictimAppearance Auto

Globalvariable Property VampireVampireDrain Auto
Globalvariable Property VampireVampiresServant Auto
Globalvariable Property VampireStrength Auto
Globalvariable Property VampireSunDamage2 Auto	
Globalvariable Property VampireFearsEmbrace Auto
Globalvariable Property VampireDomination Auto
Globalvariable Property VampireVampiricMindBlast Auto
Globalvariable Property VampireDeflectLightandShadow Auto	
Globalvariable Property VampireMortalsMask Auto
GlobalVariable Property VampireMortalsMaskActive Auto
Globalvariable Property VampireRevealAuras2 Auto
Globalvariable Property VampirePraestareSanguinare Auto
Globalvariable Property VampireFrostCloud Auto	
Globalvariable Property VampireIceFlesh Auto		
Globalvariable Property VampireCallCreature Auto		
Globalvariable Property VampireUnholyGrasp Auto			
Globalvariable Property VampireSanguinemReddere Auto		
Globalvariable Property VampireCombatBonus Auto	
Globalvariable Property VampireInvokeFog Auto		
Globalvariable Property VampireMistwalker Auto			
Globalvariable Property VampireBlinkAttack Auto			
Globalvariable Property VampireSidestepReflexes Auto	
Globalvariable Property VampireFallingDamageReduction2 Auto	
GlobalVariable Property VampireNoLevelNeededForRank Auto
Globalvariable Property VampireFoodPotionHealing Auto
GlobalVariable Property VampireNoFoodVar Auto
GlobalVariable Property VampireNoPotionsVar Auto
GlobalVariable Property VampireNoHealingVar Auto
GlobalVariable Property VampireBottledBlood Auto
GlobalVariable Property VampireExtractBlood Auto
GlobalVariable Property VampireLordFearEffect Auto
GlobalVariable Property VampireStatusMessages Auto
GlobalVariable Property VampirePraestareRemoveAllFactions Auto
GlobalVariable Property VampireExtractingBlood Auto
GlobalVariable Property VampireNoRedScreen Auto
GlobalVariable Property VampireGoingOutside Auto
GlobalVariable Property VampireMenuSpell Auto
GlobalVariable Property VampireJumpingBonus Auto
GlobalVariable Property VampireSpeed Auto
GlobalVariable Property VampireVictimSkills Auto
GlobalVariable Property VampireSneakFeed Auto
GlobalVariable Property VampireNecksBittenDiscovered Auto
GlobalVariable Property VampireSeduction Auto
GlobalVariable Property VampireTollereSanguinare Auto
GlobalVariable Property VampireForceFeed Auto
GlobalVariable Property VampireCombatBite Auto
GlobalVariable Property VampireNoDrowning Auto
GlobalVariable Property VampireTurnToAshes Auto
GlobalVariable Property VampireHuntersRevertVL Auto
GlobalVariable Property VampireBloodPotionSatiation Auto
GlobalVariable Property VampireCannotTurnVL Auto
GlobalVariable Property UsingBetterVampiresScripts Auto
GlobalVariable Property BetterVampiresUseHotkey Auto
GlobalVariable Property BetterVampiresHotkey Auto
GlobalVariable Property BetterVampiresHotkeyPressed Auto
GlobalVariable Property VampireRankAbilitiesSatiation Auto
GlobalVariable Property VampireFireWeakness Auto
GlobalVariable Property VampireFrostResistance Auto
GlobalVariable Property VampireAmaranthFeed Auto
GlobalVariable Property VampirePraeceptorPerks Auto
GlobalVariable Property VampireAbilityTimers Auto
GlobalVariable Property VampireNeckMarks Auto
GlobalVariable Property EnableVampireBloodPoints Auto
GlobalVariable Property VampireBloodPoints Auto
GlobalVariable Property EnableVampireBloodPointsMeter Auto
GlobalVariable Property BetterVampiresBloodMeterDisplay_Contextual Auto
GlobalVariable Property BetterVampiresBloodMeter_Opacity Auto
GlobalVariable Property BetterVampiresBloodMeterDisplayTime Auto
GlobalVariable Property BetterVampiresBloodMeterX Auto
GlobalVariable Property BetterVampiresBloodMeterY Auto
GlobalVariable Property BloodMeterDisableFeedTimer Auto
GlobalVariable Property VampireHunterFactionRemoval Auto
GlobalVariable Property VampireVictimsWillFeed Auto

GlobalVariable Property ShadowLightLevel Auto

GlobalVariable Property BVNightVampireVision Auto
GlobalVariable Property BVVampiresServant Auto
GlobalVariable Property BVRevealAuras Auto
GlobalVariable Property BVDeflectLight Auto
GlobalVariable Property BVMortalsMask Auto
GlobalVariable Property BVFearsEmbrace Auto
GlobalVariable Property BVSeduction Auto
GlobalVariable Property BVDomination Auto
GlobalVariable Property BVMindBlast Auto
GlobalVariable Property BVCallCreature Auto
GlobalVariable Property BVIceFlesh Auto
GlobalVariable Property BVSanguinemReddere Auto
GlobalVariable Property BVInvokeFog Auto
GlobalVariable Property BVMistwalker Auto
GlobalVariable Property BVBlinkAttack Auto
GlobalVariable Property BVUnholyGrasp Auto
GlobalVariable Property BVChangeRevert Auto
GlobalVariable Property BVCorpseCurse Auto
GlobalVariable Property BVSummonGargoyle Auto
GlobalVariable Property BVFrostCloud Auto
GlobalVariable Property BVBats Auto
GlobalVariable Property BVDrain Auto
GlobalVariable Property BVPraestareSanguinare Auto
GlobalVariable Property BVTollereSanguinare Auto

Perk Property VampireFeedCustomRace2 Auto
Perk Property VampireFallingDamageReduction Auto
Perk Property VampireQuickReflexesPerk01 Auto
Perk Property VampireQuickReflexesPerk02 Auto
Perk Property VampireQuickReflexesPerk03 Auto
Perk Property VampireQuickReflexesPerk04 Auto
Perk Property VampireQuickReflexesPerk05 Auto
Perk Property VampireFeed Auto
Perk Property VampireNoFoodPerk Auto
Perk Property VampireNoPotionPerk Auto
Perk Property VampireNoHealingPerk Auto
Perk Property VampireExtractBloodPotions Auto
Perk Property VampireAmaranth Auto
 
GlobalVariable Property PlayerIsVampire Auto
Quest Property PlayerVampireQuest Auto
Quest Property BetterVampiresConfig Auto
Spell Property WerewolfImmunity Auto
Spell Property DiseaseSanguinareVampiris Auto
MagicEffect Property DisDamageHealthVampire Auto
Spell Property DiseaseAtaxia auto
Spell Property DiseaseBoneBreakFever Auto
Spell Property DiseaseBrainRot Auto
Spell Property DiseaseRattles Auto
Spell Property DiseaseRockjoint auto
Spell Property DiseaseWitbane Auto

 
;Event OnEquipped(Actor akActor)

;	If akActor == Player
	
;		Game.DisablePlayerControls(False, False, False, False, False, True) ; Momentarily disable other menus
;		Player.EquipItem(MenuARMO, True, True) ; Prevent unequip/reequip in favorites until the current menu is resolved
;		Utility.Wait(0.01) ; This ensures equipping the token from the favorites menu works
;		Player.UnequipItem(MenuARMO, False, True) ; Silently unequip item
;		Game.EnablePlayerControls(False, False, False, False, False, True) ; Undo DisablePlayerControls
;		Menu()
		
;	EndIf
	
;EndEvent

Event OnEffectStart(Actor akTarget, Actor akCaster)

		Player = Game.GetPlayer()
		Menu()
		
EndEvent

 
Function Menu(Int aiMessage = 0, Int aiButton = 0, Bool abMenu = True)

		If aiButton == -1 ; As above, can prevent problems if recycling aiButton
		
		ElseIf aiMessage == 0
			If VampireProgression.GetValue() == 0
				aiButton = OptionsMenu00MESG.Show()
			ElseIf VampireProgression.GetValue() == 10000
				aiButton = OptionsMenu00MESGb.Show()
			EndIf	
			If aiButton == 0
				VampireProgression.SetValue(0)
				menu(1)				
			ElseIf aiButton == 1
				VampireProgression.SetValue(10000)	
				menu(1)
			ElseIf aiButton == 2 ; Back
				menu(12)
			ElseIf aiButton == 3 ; More
				menu(1)
			ElseIf aiButton == 4 ; Done
				abMenu = False				
			EndIf
			
		ElseIf aiMessage == 1 
			If VampireDynamicStages.GetValue() == 0
				aiButton = OptionsMenu01MESG.Show()
			ElseIf VampireDynamicStages.GetValue() == 10000
				aiButton = OptionsMenu01MESGb.Show()
			ElseIf VampireDynamicStages.GetValue() == 20000
				aiButton = OptionsMenu01MESGc.Show()				
			EndIf	
			If aiButton == 0
				VampireDynamicStages.SetValue(0)
				menu(2)				
			ElseIf aiButton == 1
				VampireDynamicStages.SetValue(10000)
				menu(2)				
			ElseIf aiButton == 2
				VampireDynamicStages.SetValue(20000)
				menu(2)				
			ElseIf aiButton == 3 ; Back
				menu(0)
			ElseIf aiButton == 4 ; More
				menu(2)
			ElseIf aiButton == 5 ; Done
				abMenu = False
			EndIf

		ElseIf aiMessage == 2
			If VampireStageHated.GetValue() == 10000
				aiButton = OptionsMenu02MESG.Show()
			ElseIf VampireStageHated.GetValue() == 20000
				aiButton = OptionsMenu02MESGb.Show()
			ElseIf VampireStageHated.GetValue() == 0
				aiButton = OptionsMenu02MESGc.Show()				
			EndIf
			If aiButton == 0
				VampireStageHated.SetValue(10000)	
				menu(3)				
			ElseIf aiButton == 1
				VampireStageHated.SetValue(20000)	
				menu(3)
			ElseIf aiButton == 2
				VampireStageHated.SetValue(0)	
				menu(3)
			ElseIf aiButton == 3 ; Back
				menu(1)
			ElseIf aiButton == 4 ; More
				menu(3)
			ElseIf aiButton == 5 ; Done
				abMenu = False
			EndIf		
			
		ElseIf aiMessage == 3
			If VampireRankProgression.GetValue() == 0
				aiButton = OptionsMenu03MESG.Show()
			ElseIf VampireRankProgression.GetValue() == 10000
				aiButton = OptionsMenu03MESGb.Show()
			EndIf
			If aiButton == 0
				VampireRankProgression.SetValue(0)	
				menu(4)
			ElseIf aiButton == 1
				VampireRankProgression.SetValue(10000)	
				menu(4)
			ElseIf aiButton == 2 ; Back
				menu(2)
			ElseIf aiButton == 3 ; More
				menu(4)
			ElseIf aiButton == 4 ; Done
				abMenu = False
			EndIf

		ElseIf aiMessage == 4
			If VampireSunEffects.GetValue() == 0
				aiButton = OptionsMenu04MESG.Show()
			ElseIf VampireSunEffects.GetValue() == 10000
				aiButton = OptionsMenu04MESGb.Show()
			EndIf
			If aiButton == 0
				VampireSunEffects.SetValue(10000)	
				menu(5)
			ElseIf aiButton == 1
				VampireSunEffects.SetValue(0)	
				menu(5)
			ElseIf aiButton == 2 ; Back
				menu(3)
			ElseIf aiButton == 3 ; More
				menu(5)
			ElseIf aiButton == 4 ; Done
				abMenu = False
			EndIf

		ElseIf aiMessage == 5
			If VampireSunDamage.GetValue() == 0
				aiButton = OptionsMenu05MESG.Show()
			ElseIf VampireSunDamage.GetValue() == 10000
				aiButton = OptionsMenu05MESGb.Show()
			ElseIf VampireSunDamage.GetValue() == 20000
				aiButton = OptionsMenu05MESGc.Show()				
			EndIf
			If aiButton == 0
				VampireSunDamage.SetValue(10000) 
				menu(13)
			ElseIf aiButton == 1
				VampireSunDamage.SetValue(20000)	
				menu(13)
			ElseIf aiButton == 2
				VampireSunDamage.SetValue(0)	
				menu(13)
			ElseIf aiButton == 3 ; Back
				menu(4)
			ElseIf aiButton == 4 ; More
				menu(13)
			ElseIf aiButton == 5 ; Done
				abMenu = False
			EndIf

		ElseIf aiMessage == 13
			If VampireSunDamageSpecial.GetValue() == 0
				aiButton = OptionsMenu13MESG.Show()
			ElseIf VampireSunDamageSpecial.GetValue() == 10000
				aiButton = OptionsMenu13MESGb.Show()
			ElseIf VampireSunDamageSpecial.GetValue() == 20000
				aiButton = OptionsMenu13MESGc.Show()				
			EndIf
			If aiButton == 0
				VampireSunDamageSpecial.SetValue(10000) 
				menu(6)
			ElseIf aiButton == 1
				VampireSunDamageSpecial.SetValue(20000)	
				menu(6)
			ElseIf aiButton == 2
				VampireSunDamageSpecial.SetValue(0)	
				menu(6)
			ElseIf aiButton == 3 ; Back
				menu(5)
			ElseIf aiButton == 4 ; More
				menu(6)
			ElseIf aiButton == 5 ; Done
				abMenu = False
			EndIf			
			
		ElseIf aiMessage == 6
			If VampireFeedOffDead.GetValue() == 0
				aiButton = OptionsMenu06MESG.Show()
			ElseIf VampireFeedOffDead.GetValue() == 10000
				aiButton = OptionsMenu06MESGb.Show()
			ElseIf VampireFeedOffDead.GetValue() == 20000
				aiButton = OptionsMenu06MESGc.Show()				
			EndIf
			If aiButton == 0
				VampireFeedOffDead.SetValue(10000)
				menu(7)
			ElseIf aiButton == 1
				VampireFeedOffDead.SetValue(0)
				menu(7)
			ElseIf aiButton == 2
				VampireFeedOffDead.SetValue(20000)
				menu(7)				
			ElseIf aiButton == 3 ; Back
				menu(13)
			ElseIf aiButton == 4 ; More
				menu(7)
			ElseIf aiButton == 5 ; Done
				abMenu = False
			EndIf			
			
		ElseIf aiMessage == 7
			If VampireHunters.GetValue() == 0
				aiButton = OptionsMenu07MESG.Show()
			ElseIf VampireHunters.GetValue() == 10000
				aiButton = OptionsMenu07MESGb.Show()
			EndIf
			If aiButton == 0
				VampireHunters.SetValue(10000)	
				menu(8)
			ElseIf aiButton == 1
				VampireHunters.SetValue(0)	
				menu(8)
			ElseIf aiButton == 2 ; Back
				menu(6)
			ElseIf aiButton == 3 ; More
				menu(8)
			ElseIf aiButton == 4 ; Done
				abMenu = False
			EndIf

		ElseIf aiMessage == 8
			If VampireLightLevelPenalties.GetValue() == 0
				aiButton = OptionsMenu08MESG.Show()
			ElseIf VampireLightLevelPenalties.GetValue() == 10000
				aiButton = OptionsMenu08MESGb.Show()
			EndIf
			If aiButton == 0
				VampireLightLevelPenalties.SetValue(0)		
				menu(9)				
			ElseIf aiButton == 1
				VampireLightLevelPenalties.SetValue(10000)	
				menu(9)				
			ElseIf aiButton == 2 ; Back
				menu(7)
			ElseIf aiButton == 3 ; More
				menu(9)
			ElseIf aiButton == 4 ; Done
				abMenu = False
			EndIf

		ElseIf aiMessage == 9
			If VampireLightLevelRegen.GetValue() == 0
				aiButton = OptionsMenu09MESG.Show()
			ElseIf VampireLightLevelRegen.GetValue() == 10000
				aiButton = OptionsMenu09MESGb.Show()
			EndIf
			If aiButton == 0
				VampireLightLevelRegen.SetValue(0)		
				menu(15)				
			ElseIf aiButton == 1
				VampireLightLevelRegen.SetValue(10000)	
				menu(15)				
			ElseIf aiButton == 2 ; Back
				menu(8)
			ElseIf aiButton == 3 ; More
				menu(15)
			ElseIf aiButton == 4 ; Done
				abMenu = False
			EndIf			

		ElseIf aiMessage == 15
			If VampireFoodPotionHealing.GetValue() == 0
				aiButton = OptionsMenu15MESG.Show()
			ElseIf VampireFoodPotionHealing.GetValue() == 10000
				aiButton = OptionsMenu15MESGb.Show()
			EndIf	
			If aiButton == 0
				VampireFoodPotionHealing.SetValue(10000)
				menu(16)				
			ElseIf aiButton == 1
				VampireFoodPotionHealing.SetValue(0)	
				menu(16)
			ElseIf aiButton == 2 ; Back
				menu(9)
			ElseIf aiButton == 3 ; More
				menu(16)
			ElseIf aiButton == 4 ; Done
				abMenu = False				
			EndIf
			
		ElseIf aiMessage == 16
			If VampireExtractBlood.GetValue() == 0
				aiButton = OptionsMenu16MESG.Show()
			ElseIf VampireExtractBlood.GetValue() == 10000
				aiButton = OptionsMenu16MESGb.Show()
			EndIf	
			If aiButton == 0
				VampireExtractBlood.SetValue(10000)
				Game.GetPlayer().AddPerk(VampireExtractBloodPotions)
				menu(14)				
			ElseIf aiButton == 1
				VampireExtractBlood.SetValue(0)
				Game.GetPlayer().RemovePerk(VampireExtractBloodPotions)				
				menu(14)
			ElseIf aiButton == 2 ; Back
				menu(15)
			ElseIf aiButton == 3 ; More
				menu(14)
			ElseIf aiButton == 4 ; Done
				abMenu = False				
			EndIf			
			
		ElseIf aiMessage == 14
			If VampireVictimAppearance.GetValue() == 0
				aiButton = OptionsMenu14MESG.Show()
			ElseIf VampireVictimAppearance.GetValue() == 10000
				aiButton = OptionsMenu14MESGb.Show()
			EndIf
			If aiButton == 0
				VampireVictimAppearance.SetValue(0)		
				menu(10)				
			ElseIf aiButton == 1
				VampireVictimAppearance.SetValue(10000)	
				menu(10)				
			ElseIf aiButton == 2 ; Back
				menu(16)
			ElseIf aiButton == 3 ; More
				menu(10)
			ElseIf aiButton == 4 ; Done
				abMenu = False
			EndIf				
			
		ElseIf aiMessage == 10
			aiButton = OptionsMenu10MESG.Show()
			If aiButton == 0

				abMenu = False	
				utility.wait(0.1)		

				If Game.GetPlayer().GetRace() == DLC1VampireBeastRace
					Debug.Notification("You cannot reset this mod while in Vampire Lord Form.")
				Else
					BetterVampiresInitializationQuest.Stop()				
					VampireSunEffects.SetValue(0)	
					VampireSunDamage.SetValue(0)
					VampireSunDamageSpecial.SetValue(0)				
					VampireProgression.SetValue(0)	
					CreateVampire.SetValue(0)	
					VampireStageHated.SetValue(0)	
					VampireHunters.SetValue(0)	
					VampireRank.SetValue(0)		
					VampireRankProgression.SetValue(0)	
					VampireUpdateGameTime.SetValue(0)	
					VeilOfFearUseCount.SetValue(0)	
					VeilOfFearResetCounter.SetValue(0)
					VampireStageGlobal.SetValue(0)
					VampireNightEye.SetValue(0)
					VampireCustomRace.SetValue(0)
					VampireRevealAuras.SetValue(0)	
					VampireFeedOffDead.SetValue(0)
					VampireDynamicStages.SetValue(0)
					RECASTVampireBlink.SetValue(0)
					RECASTVampireMistwalker.SetValue(0)
					RECASTVampireUnholyGrasp.SetValue(0)
					RECASTVampireDeflectLight.SetValue(0)
					RECASTVampireDomination.SetValue(0)
					RECASTVampireRaiseThrall.SetValue(0)
					RECASTVampireCallCreature.SetValue(0)
					RECASTVampireMindBlast.SetValue(0)
					RECASTVampireInvokeFog.SetValue(0)		
					VampireUnholyGraspToggle.SetValue(0)
					VampireDeflectLightToggle.SetValue(0)
					VampireDominationToggle.SetValue(0)
					VampireRaiseThrallToggle.SetValue(0)
					VampireCallCreatureToggle.SetValue(0)
					VampireMindBlastToggle.SetValue(0)
					VampireInvokeFogToggle.SetValue(0)
					
					VampireLightLevel.SetValue(0)
					VampireLightLevelPenalties.SetValue(0)	
					VampireLightLevelRegen.SetValue(0)	
					VampireVictimAppearance.SetValue(0)	
					VampireFoodPotionHealing.SetValue(0)	
					VampireBottledBlood.SetValue(0)	
					VampireExtractBlood.SetValue(0)
					VampireExtractingBlood.SetValue(0)	
					VampireNoRedScreen.SetValue(0)
					VampireGoingOutside.SetValue(0)

					VampireVampireDrain.SetValue(0)
					VampireVampiresServant.SetValue(0)
					VampireStrength.SetValue(0)
					VampireSunDamage2.SetValue(0)	
					VampireFearsEmbrace.SetValue(0)
					VampireDomination.SetValue(0)
					VampireVampiricMindBlast.SetValue(0)
					VampireDeflectLightandShadow.SetValue(0)
					VampireMortalsMask.SetValue(0)
					VampireMortalsMaskActive.SetValue(0)		
					VampireRevealAuras2.SetValue(0)
					VampirePraestareSanguinare.SetValue(0)
					VampireFrostCloud.SetValue(0)	
					VampireIceFlesh.SetValue(0)		
					VampireCallCreature.SetValue(0)	
					VampireUnholyGrasp.SetValue(0)			
					VampireSanguinemReddere.SetValue(0)		
					VampireCombatBonus.SetValue(0)
					VampireInvokeFog.SetValue(0)	
					VampireMistwalker.SetValue(0)			
					VampireBlinkAttack.SetValue(0)		
					VampireSidestepReflexes.SetValue(0)	
					VampireFallingDamageReduction2.SetValue(0)
					VampireNoFoodVar.SetValue(0)		
					VampireNoPotionsVar.SetValue(0)		
					VampireNoHealingVar.SetValue(0)
					VampireLordFearEffect.SetValue(0)				
					VampireNoLevelNeededForRank.SetValue(0)
					VampireStatusMessages.SetValue(0)
					VampirePraestareRemoveAllFactions.SetValue(0)
					VampireMenuSpell.SetValue(0)
					VampireJumpingBonus.SetValue(0)
					VampireSpeed.SetValue(0)		
					VampireVictimSkills.SetValue(0)					
					VampireSneakFeed.SetValue(0)
					VampireNecksBittenDiscovered.SetValue(0)
					VampireSeduction.SetValue(0)
					VampireTollereSanguinare.SetValue(0)
					VampireForceFeed.SetValue(0)
					VampireCombatBite.SetValue(0)
					VampireNoDrowning.SetValue(0)
					VampireTurnToAshes.SetValue(0)	
					VampireHuntersRevertVL.SetValue(0)
					VampireBloodPotionSatiation.SetValue(0)						
					VampireCannotTurnVL.SetValue(0)
					UsingBetterVampiresScripts.SetValue(0)					
					BetterVampiresUseHotkey.SetValue(0)
					BetterVampiresHotkeyPressed.SetValue(0)
					VampireRankAbilitiesSatiation.SetValue(0)
					VampireFireWeakness.SetValue(0)
					VampireFrostResistance.SetValue(0)
					VampireAmaranthFeed.SetValue(0)
					VampirePraeceptorPerks.SetValue(0)
					VampireAbilityTimers.SetValue(0)
					VampireNeckMarks.SetValue(0)
					EnableVampireBloodPoints.SetValue(0)
					VampireBloodPoints.SetValue(300)
					EnableVampireBloodPointsMeter.SetValue(0)
					BetterVampiresBloodMeterDisplay_Contextual.SetValue(2)
					BetterVampiresBloodMeter_Opacity.SetValue(100)
					BetterVampiresBloodMeterDisplayTime.SetValue(4)
					BetterVampiresBloodMeterX.SetValue(67)
					BetterVampiresBloodMeterY.SetValue(640)
					BloodMeterDisableFeedTimer.SetValue(0)					
					VampireHunterFactionRemoval.SetValue(0)
					VampireVictimsWillFeed.SetValue(0)
					
					ShadowLightLevel.SetValue(120)
					
					BetterVampiresHotkey.SetValue(47)
					BVNightVampireVision.SetValue(211)
					BVVampiresServant.SetValue(211)	
					BVRevealAuras.SetValue(211)	
					BVDeflectLight.SetValue(211)	
					BVMortalsMask.SetValue(211)	
					BVFearsEmbrace.SetValue(211)	
					BVSeduction.SetValue(211)	
					BVDomination.SetValue(211)	
					BVMindBlast.SetValue(211)	
					BVCallCreature.SetValue(211)	
					BVIceFlesh.SetValue(211)	
					BVSanguinemReddere.SetValue(211)	
					BVInvokeFog.SetValue(211)	
					BVMistwalker.SetValue(211)	
					BVBlinkAttack.SetValue(211)	
					BVUnholyGrasp.SetValue(211)	
					BVCorpseCurse.SetValue(211)	
					BVSummonGargoyle.SetValue(211)	
					BVFrostCloud.SetValue(211)
					BVBats.SetValue(211)
					BVChangeRevert.SetValue(211)
					BVDrain.SetValue(211)
					BVPraestareSanguinare.SetValue(211)
					BVTollereSanguinare.SetValue(211)
					
					Player.RemoveFromFaction(VampirePCFaction)
					Player.RemoveFromFaction(VampirePCFamily)
					Player.RemoveFromFaction(DummyFaction)
					Player.SetAttackActorOnSight(False)
		
					;Dispel all abilities
					Player.DispelSpell(VampireVampirism)
					Player.DispelSpell(VampireTurnToAshPile)	
					Player.DispelSpell(ABVampireSkills)
					Player.DispelSpell(ABVampireSkills02)
					Player.DispelSpell(AbVampire01)
					Player.DispelSpell(AbVampire02)
					Player.DispelSpell(AbVampire03)
					Player.DispelSpell(AbVampire04)
					Player.DispelSpell(AbVampire05)	
					Player.DispelSpell(AbVampire01b)
					Player.DispelSpell(AbVampire02b)
					Player.DispelSpell(AbVampire03b)
					Player.DispelSpell(AbVampire04b)
					Player.DispelSpell(AbVampire05b)
					Player.DispelSpell(VampireDrain01)
					Player.DispelSpell(VampireDrain02)
					Player.DispelSpell(VampireDrain03)
					Player.DispelSpell(VampireDrain04)
					Player.DispelSpell(VampireDrain05)	
					Player.DispelSpell(VampireDrain06)
					Player.DispelSpell(VampireDrain07)
					Player.DispelSpell(VampireDrain08)
					Player.DispelSpell(VampireDrain09)
					Player.DispelSpell(VampireDrain10)	
					Player.DispelSpell(VampireDrain11)
					Player.DispelSpell(VampireDrain12)
					Player.DispelSpell(VampireDrain13)	
					Player.DispelSpell(VampireRaiseThrall01)
					Player.DispelSpell(VampireRaiseThrall02)
					Player.DispelSpell(VampireRaiseThrall03)
					Player.DispelSpell(VampireRaiseThrall04)
					Player.DispelSpell(VampireRaiseThrall05)
					Player.DispelSpell(VampireStrength01)
					Player.DispelSpell(VampireStrength02)
					Player.DispelSpell(VampireStrength03)
					Player.DispelSpell(VampireStrength04)
					Player.DispelSpell(VampireStrength05)	
					Player.DispelSpell(VampireSunDamage01)
					Player.DispelSpell(VampireSunDamage02)
					Player.DispelSpell(VampireSunDamage03)
					Player.DispelSpell(VampireSunDamage04)
					Player.DispelSpell(VampireSunDamage05)	
		
					Player.DispelSpell(VampireBurnInSun10)
					Player.DispelSpell(VampireBurnInSun09)
					Player.DispelSpell(VampireBurnInSun08)
					Player.DispelSpell(VampireBurnInSun07)
					Player.DispelSpell(VampireBurnInSun06)		
					Player.DispelSpell(VampireBurnInSun05)
					Player.DispelSpell(VampireBurnInSun04)
					Player.DispelSpell(VampireBurnInSun03)
					Player.DispelSpell(VampireBurnInSun02)
					Player.DispelSpell(VampireBurnInSun01)		
		
					Player.DispelSpell(VampireSleep)
					Player.DispelSpell(VampireSleep2)	
					Player.DispelSpell(VampireSleep3)
					Player.DispelSpell(VampireCharm)
					Player.DispelSpell(VampireCharm2)	
					Player.DispelSpell(VampireCloak)
					Player.DispelSpell(VampireInvisibilityPC)
					Player.DispelSpell(VampireInvisibilityRecast)
					Player.DispelSpell(VampireCharisma01) 	
					Player.DispelSpell(VampireCharisma02) 		
					Player.DispelSpell(VampireHuntersSight)
					Player.DispelSpell(VampireDetectAll)
					Player.DispelSpell(VampireDetectAll02)
					Player.DispelSpell(VampireDetectAll03)
					Player.DispelSpell(VampireDetectAll04)	
					Player.DispelSpell(CreateNPCVampireSpell)
					Player.DispelSpell(TurnOnCreateNPCVampire)
		
					Player.DispelSpell(VampireRemoveHateSpell)	

					Player.DispelSpell(VampireRankFrostCloud01)
					Player.DispelSpell(VampireRankFrostCloud02)
					Player.DispelSpell(VampireRankFrostCloud03)
					Player.DispelSpell(VampireRankFrostCloud04)
					Player.DispelSpell(VampireRankFrostCloud05)
					Player.DispelSpell(VampireRankFrostCloud06)
					Player.DispelSpell(VampireRankIceFleshSpell01)
					Player.DispelSpell(VampireRankIceFleshSpell02)
					Player.DispelSpell(VampireRankIceFleshSpell03)
					Player.DispelSpell(VampireRankIceFleshSpell04)
					Player.DispelSpell(VampireRankIceFleshSpell05)
					Player.DispelSpell(VampireRankIceFleshSpell06)
					Player.DispelSpell(VampireRankSummonCreatureSpell)
					Player.DispelSpell(VampireRankTelekinesis2)
					Player.DispelSpell(SanguinemReddereVampireSpell)					
					Player.DispelSpell(VampireRankCombatBonusSpell01)
					Player.DispelSpell(VampireRankCombatBonusSpell02)
					Player.DispelSpell(VampireRankCombatBonusSpell03)
					Player.DispelSpell(VampireRankCombatBonusSpell04)
					Player.DispelSpell(VampireRankCombatBonusSpell05)	
					Player.DispelSpell(VampireRankCombatBonusSpell06)		
					Player.DispelSpell(VampireRankInvokeFogSpell01)
					Player.DispelSpell(VampireRankInvokeFogSpell02)
					Player.DispelSpell(VampireRankInvokeFogSpell03)
					Player.DispelSpell(VampireRankInvokeFogSpell04)
					Player.DispelSpell(VampireRankInvokeFogSpell05)
					Player.DispelSpell(VampireRankMistFormSpell)
					Player.DispelSpell(VampireRankBlinkAttackSpell)
					Player.DispelSpell(VampireQuickReflexesSpell01)
					Player.DispelSpell(VampireQuickReflexesSpell02)
					Player.DispelSpell(VampireQuickReflexesSpell03)
					Player.DispelSpell(VampireQuickReflexesSpell04)
					Player.DispelSpell(VampireQuickReflexesSpell05)	
					Player.DispelSpell(VampireJumpBonusSpell)
		
					;Remove all abilities
					Player.RemoveSpell(VampireVampirism)
					Player.RemoveSpell(VampireTurnToAshPile)	
					Player.RemoveSpell(ABVampireSkills)
					Player.RemoveSpell(ABVampireSkills02)
					Player.RemoveSpell(AbVampire01)
					Player.RemoveSpell(AbVampire02)
					Player.RemoveSpell(AbVampire03)
					Player.RemoveSpell(AbVampire04)
					Player.RemoveSpell(AbVampire05)	
					Player.RemoveSpell(AbVampire01b)
					Player.RemoveSpell(AbVampire02b)
					Player.RemoveSpell(AbVampire03b)
					Player.RemoveSpell(AbVampire04b)
					Player.RemoveSpell(AbVampire05b)
					Player.RemoveSpell(VampireDrain01)
					Player.RemoveSpell(VampireDrain02)
					Player.RemoveSpell(VampireDrain03)
					Player.RemoveSpell(VampireDrain04)
					Player.RemoveSpell(VampireDrain05)	
					Player.RemoveSpell(VampireDrain06)
					Player.RemoveSpell(VampireDrain07)
					Player.RemoveSpell(VampireDrain08)
					Player.RemoveSpell(VampireDrain09)
					Player.RemoveSpell(VampireDrain10)	
					Player.RemoveSpell(VampireDrain11)
					Player.RemoveSpell(VampireDrain12)
					Player.RemoveSpell(VampireDrain13)
					Player.RemoveSpell(VampireRaiseThrall01)
					Player.RemoveSpell(VampireRaiseThrall02)
					Player.RemoveSpell(VampireRaiseThrall03)
					Player.RemoveSpell(VampireRaiseThrall04)
					Player.RemoveSpell(VampireRaiseThrall05)
					Player.RemoveSpell(VampireStrength01)
					Player.RemoveSpell(VampireStrength02)
					Player.RemoveSpell(VampireStrength03)
					Player.RemoveSpell(VampireStrength04)
					Player.RemoveSpell(VampireStrength05)	
					Player.RemoveSpell(VampireSunDamage01)
					Player.RemoveSpell(VampireSunDamage02)
					Player.RemoveSpell(VampireSunDamage03)
					Player.RemoveSpell(VampireSunDamage04)
					Player.RemoveSpell(VampireSunDamage05)	
		
					Player.RemoveSpell(VampireBurnInSun10)
					Player.RemoveSpell(VampireBurnInSun09)
					Player.RemoveSpell(VampireBurnInSun08)
					Player.RemoveSpell(VampireBurnInSun07)
					Player.RemoveSpell(VampireBurnInSun06)		
					Player.RemoveSpell(VampireBurnInSun05)
					Player.RemoveSpell(VampireBurnInSun04)
					Player.RemoveSpell(VampireBurnInSun03)
					Player.RemoveSpell(VampireBurnInSun02)
					Player.RemoveSpell(VampireBurnInSun01)		
		
					Player.RemoveSpell(VampireSleep)
					Player.RemoveSpell(VampireSleep2)	
					Player.RemoveSpell(VampireSleep3)
					Player.RemoveSpell(VampireCharm)
					Player.RemoveSpell(VampireCharm2)	
					Player.RemoveSpell(VampireCloak)
					Player.RemoveSpell(VampireInvisibilityPC)
					Player.RemoveSpell(VampireInvisibilityRecast)
					Player.RemoveSpell(VampireCharisma01) 	
					Player.RemoveSpell(VampireCharisma02) 		
					Player.RemoveSpell(VampireHuntersSight)
					Player.RemoveSpell(VampireDetectAll)
					Player.RemoveSpell(VampireDetectAll02)
					Player.RemoveSpell(VampireDetectAll03)
					Player.RemoveSpell(VampireDetectAll04)		
					Player.RemoveSpell(CreateNPCVampireSpell)
					Player.RemoveSpell(TurnOnCreateNPCVampire)
					Player.RemoveSpell(CureNPCVampire)			
		
					Player.RemoveSpell(VampireRemoveHateSpell)	
		
					Player.RemoveSpell(VampireRankFrostCloud01)
					Player.RemoveSpell(VampireRankFrostCloud02)
					Player.RemoveSpell(VampireRankFrostCloud03)
					Player.RemoveSpell(VampireRankFrostCloud04)
					Player.RemoveSpell(VampireRankFrostCloud05)
					Player.RemoveSpell(VampireRankFrostCloud06)
					Player.RemoveSpell(VampireRankIceFleshSpell01)
					Player.RemoveSpell(VampireRankIceFleshSpell02)
					Player.RemoveSpell(VampireRankIceFleshSpell03)
					Player.RemoveSpell(VampireRankIceFleshSpell04)
					Player.RemoveSpell(VampireRankIceFleshSpell05)
					Player.RemoveSpell(VampireRankIceFleshSpell06)
					Player.RemoveSpell(VampireRankSummonCreatureSpell)
					Player.RemoveSpell(VampireRankTelekinesis2)
					Player.RemoveSpell(SanguinemReddereVampireSpell)
					Player.RemoveSpell(VampireRankCombatBonusSpell01)
					Player.RemoveSpell(VampireRankCombatBonusSpell02)
					Player.RemoveSpell(VampireRankCombatBonusSpell03)
					Player.RemoveSpell(VampireRankCombatBonusSpell04)
					Player.RemoveSpell(VampireRankCombatBonusSpell05)	
					Player.RemoveSpell(VampireRankCombatBonusSpell06)		
					Player.RemoveSpell(VampireRankInvokeFogSpell01)
					Player.RemoveSpell(VampireRankInvokeFogSpell02)
					Player.RemoveSpell(VampireRankInvokeFogSpell03)
					Player.RemoveSpell(VampireRankInvokeFogSpell04)
					Player.RemoveSpell(VampireRankInvokeFogSpell05)
					Player.RemoveSpell(VampireRankMistFormSpell)
					Player.RemoveSpell(VampireRankBlinkAttackSpell)
					Player.RemoveSpell(VampireQuickReflexesSpell01)
					Player.RemoveSpell(VampireQuickReflexesSpell02)
					Player.RemoveSpell(VampireQuickReflexesSpell03)
					Player.RemoveSpell(VampireQuickReflexesSpell04)
					Player.RemoveSpell(VampireQuickReflexesSpell05)
					Player.RemoveSpell(VampireJumpBonusSpell)
		
					;Player.RemovePerk(VampireFeedCustomRace2)				
					Player.RemovePerk(VampireFallingDamageReduction)
					Player.RemovePerk(VampireQuickReflexesPerk01)
					Player.RemovePerk(VampireQuickReflexesPerk02)
					Player.RemovePerk(VampireQuickReflexesPerk03)
					Player.RemovePerk(VampireQuickReflexesPerk04)
					Player.RemovePerk(VampireQuickReflexesPerk05)
					;Player.RemovePerk(VampireFeed)
					Player.RemovePerk(VampireNoFoodPerk)
					Player.RemovePerk(VampireNoPotionPerk)
					Player.RemovePerk(VampireNoHealingPerk)				
					Player.RemovePerk(VampireExtractBloodPotions)
					Player.RemovePerk(VampireAmaranth)

					UnRegisterForAllKeys()
					
					Player.UnequipAll()
					utility.wait(1.0)	
	
					Player.SetActorValue("SpeedMult", 0)
					Player.SetActorValue("SpeedMult", 100)	
					Player.SetActorValue("WeaponSpeedMult", 0)
	
					;Utility.SetIniFloat("fInAirFallingCharGravityMult:Havok",1.35)
					;Game.SetGameSettingFloat("fJumpHeightMin",76.00)
	
					utility.wait(1.0)
					Debug.Notification("All Spells/Variables/Abilities Removed - Please feed if you want to restore")
					utility.wait(1.0)
					BetterVampiresConfig.Stop()
					utility.wait(1.0)					
					BetterVampiresConfig.Start()					
					Debug.Notification("P.S. Equipment was removed while resetting actor values ... put some clothes on")
	
					Player.SetAlpha(1)

				EndIf
			
			ElseIf aiButton == 1 ; Back
				menu(14)
			ElseIf aiButton == 2 ; More
				menu(11)
			ElseIf aiButton == 3 ; Done
				abMenu = False
			EndIf
			
		ElseIf aiMessage == 11
			aiButton = OptionsMenu11MESG.Show()
			If aiButton == 0
			
				abMenu = False	
				utility.Wait(0.5)			
			
				If Game.GetPlayer().GetRace() == DLC1VampireBeastRace
					Debug.Notification("You cannot flag yourself as a Custom Race while in Vampire Lord Form.")
				Else	
					Player.RemoveSpell(DiseaseBoneBreakFever)
					Player.RemoveSpell(DiseaseAtaxia )			
					Player.RemoveSpell(DiseaseBrainRot )
					Player.RemoveSpell(DiseaseRattles )
					Player.RemoveSpell(DiseaseRockjoint )
					Player.RemoveSpell(DiseaseWitbane )

					PlayerVampireQuest.SetStage(10)
					utility.Wait(3.0)			
					PlayerVampireQuest.Reset()
					Debug.Notification("Vampire quest script has been reset ... please wait.")
					utility.Wait(3.0)
					Game.GetPlayer().RemoveSpell(WerewolfImmunity)
					While (Game.GetPlayer().HasMagicEffect(DisDamageHealthVampire)) == False
						Game.GetPlayer().AddSpell(DiseaseSanguinareVampiris, abVerbose = False)
					EndWhile
					Debug.Notification("You have now been infected with Sanguinare Vampiris.")
					utility.Wait(3.0)
					VampireCustomRace.SetValue(10000)
					Player.AddPerk(VampireFeedCustomRace2)
					Debug.Notification("You will not have any changes made to your custom race's appearance.")			
					utility.Wait(3.0)
					Debug.Notification("You are now ready to become a Vampire normally - please rest for 3 days.")
				EndIf
				
			ElseIf aiButton == 1 ; Back
				menu(10)
			ElseIf aiButton == 2 ; More
				menu(12)
			ElseIf aiButton == 3 ; Done
				abMenu = False
			EndIf

		ElseIf aiMessage == 12
			aiButton = OptionsMenu12MESG.Show()
			If aiButton == 0

				abMenu = False			
				utility.Wait(0.5)
				
				If Game.GetPlayer().GetRace() == DLC1VampireBeastRace
					Debug.Notification("You cannot reset Sanguinare Vampiris while in Vampire Lord Form.")
				Else	
					If 	PlayerIsVampire.GetValue() == 1
						Debug.Notification("Skyrim had PlayerIsVampire = 1")
					Else
						Debug.Notification("Skyrim did not have PlayerIsVampire = 1  You were not flagged as a Vampire.")
					EndIf
					PlayerVampireQuest.SetStage(10)
					Debug.Notification("Vampirism is cured ... please wait.")
					utility.Wait(3.0)
					PlayerVampireQuest.Reset()
					Debug.Notification("Vampire quest script has been reset ... please wait.")
					utility.Wait(3.0)
					Game.GetPlayer().RemoveSpell(WerewolfImmunity)
					Int TimesToTryDisease = 60
					While (Game.GetPlayer().HasMagicEffect(DisDamageHealthVampire)) == False && TimesToTryDisease > 0
						Game.GetPlayer().AddSpell(DiseaseSanguinareVampiris, abVerbose = False)
						TimesToTryDisease -= 1
					EndWhile
					;PlayerIsVampire.SetValue(1)
					If Game.GetPlayer().HasMagicEffect(DisDamageHealthVampire)
						Debug.Notification("You have now been reinfected with Sanguinare Vampiris.")
						utility.Wait(3.0)
						Debug.Notification("You can use cure disease to stay mortal, or rest for 3 days to become a Vampire.")
					Else
						Debug.Notification("Please check if you are infected with vampirism - scripts had difficulty infecting you.")
					EndIf	
				EndIf
			
			ElseIf aiButton == 1 ; Back
				menu(11)
			ElseIf aiButton == 2 ; More
				menu(0)
			ElseIf aiButton == 3 ; Done
				abMenu = False
			EndIf	
			
			
		EndIf
		
EndFunction

Event OnEffectFinish(Actor akTarget, Actor akCaster)
	
			
EndEvent

Spell Property VampireVampirism Auto
Spell Property VampireTurnToAshPile Auto
Spell Property ABVampireSkills Auto
Spell Property ABVampireSkills02 Auto
Spell Property AbVampire01 Auto
Spell Property AbVampire02 Auto
Spell Property AbVampire03 Auto
Spell Property AbVampire04 Auto
Spell Property AbVampire05 Auto
Spell Property AbVampire01b Auto
Spell Property AbVampire02b Auto
Spell Property AbVampire03b Auto
Spell Property AbVampire04b Auto
Spell Property AbVampire05b Auto
Spell Property VampireDrain01 Auto
Spell Property VampireDrain02 Auto
Spell Property VampireDrain03 Auto
Spell Property VampireDrain04 Auto
Spell Property VampireDrain05 Auto
Spell Property VampireDrain06 Auto
Spell Property VampireDrain07 Auto
Spell Property VampireDrain08 Auto
Spell Property VampireDrain09 Auto
Spell Property VampireDrain10 Auto
Spell Property VampireDrain11 Auto
Spell Property VampireDrain12 Auto
Spell Property VampireDrain13 Auto
Spell Property VampireRaiseThrall01 Auto
Spell Property VampireRaiseThrall02 Auto
Spell Property VampireRaiseThrall03 Auto
Spell Property VampireRaiseThrall04 Auto
Spell Property VampireRaiseThrall05 Auto
Spell Property VampireStrength01 Auto
Spell Property VampireStrength02 Auto
Spell Property VampireStrength03 Auto
Spell Property VampireStrength04 Auto
Spell Property VampireStrength05 Auto
Spell Property VampireSunDamage01 Auto
Spell Property VampireSunDamage02 Auto
Spell Property VampireSunDamage03 Auto
Spell Property VampireSunDamage04 Auto
Spell Property VampireSunDamage05 Auto

Spell Property VampireBurnInSun01 Auto
Spell Property VampireBurnInSun02 Auto
Spell Property VampireBurnInSun03 Auto
Spell Property VampireBurnInSun04 Auto
Spell Property VampireBurnInSun05 Auto
Spell Property VampireBurnInSun06 Auto
Spell Property VampireBurnInSun07 Auto
Spell Property VampireBurnInSun08 Auto
Spell Property VampireBurnInSun09 Auto
Spell Property VampireBurnInSun10 Auto

Spell Property VampireSleep Auto
Spell Property VampireSleep2 Auto
Spell Property VampireSleep3 Auto
Spell Property VampireCharm Auto
Spell Property VampireCharm2 Auto
Spell Property VampireCloak Auto
Spell Property VampireInvisibilityPC Auto
Spell Property VampireInvisibilityRecast Auto
Spell Property VampireCharisma01 Auto
Spell Property VampireCharisma02 Auto
Spell Property VampireHuntersSight Auto
Spell Property VampireDetectAll Auto
Spell Property VampireDetectAll02 Auto
Spell Property VampireDetectAll03 Auto
Spell Property VampireDetectAll04 Auto
Spell Property CreateNPCVampireSpell Auto
Spell Property TurnOnCreateNPCVampire Auto
Spell Property CureNPCVampire Auto

Spell Property VampireRemoveHateSpell Auto

Spell Property VampireRankCombatBonusSpell01 Auto
Spell Property VampireRankCombatBonusSpell02 Auto
Spell Property VampireRankCombatBonusSpell03 Auto
Spell Property VampireRankCombatBonusSpell04 Auto
Spell Property VampireRankCombatBonusSpell05 Auto
Spell Property VampireRankCombatBonusSpell06 Auto
Spell Property VampireRankFrostCloud01 Auto
Spell Property VampireRankFrostCloud02 Auto
Spell Property VampireRankFrostCloud03 Auto
Spell Property VampireRankFrostCloud04 Auto
Spell Property VampireRankFrostCloud05 Auto
Spell Property VampireRankFrostCloud06 Auto
Spell Property VampireRankIceFleshSpell01 Auto
Spell Property VampireRankIceFleshSpell02 Auto
Spell Property VampireRankIceFleshSpell03 Auto
Spell Property VampireRankIceFleshSpell04 Auto
Spell Property VampireRankIceFleshSpell05 Auto
Spell Property VampireRankIceFleshSpell06 Auto
Spell Property VampireRankSummonCreatureSpell Auto
Spell Property VampireRankTelekinesis2 Auto
Spell Property SanguinemReddereVampireSpell Auto
Spell Property VampireRankInvokeFogSpell01 Auto
Spell Property VampireRankInvokeFogSpell02 Auto
Spell Property VampireRankInvokeFogSpell03 Auto
Spell Property VampireRankInvokeFogSpell04 Auto
Spell Property VampireRankInvokeFogSpell05 Auto
Spell Property VampireRankMistFormSpell Auto
Spell Property VampireRankBlinkAttackSpell Auto
Spell Property VampireQuickReflexesSpell01 Auto
Spell Property VampireQuickReflexesSpell02 Auto
Spell Property VampireQuickReflexesSpell03 Auto
Spell Property VampireQuickReflexesSpell04 Auto
Spell Property VampireQuickReflexesSpell05 Auto
Spell Property VampireJumpBonusSpell Auto
