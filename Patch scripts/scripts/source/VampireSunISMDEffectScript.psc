Scriptname VampireSunISMDEffectScript extends ActiveMagicEffect  

;Script made by Brehanin2 ( http://www.nexusmods.com/skyrim/users/2893731/? ) for Better Vampires 6.6
;Modifications made by DRestoy

imageSpaceModifier Property VampireSunlightISMD01  Auto
imageSpaceModifier Property VampireSunlightISMD02  Auto 
imageSpaceModifier Property VampireSunlightISMD03  Auto 
imageSpaceModifier Property VampireSunlightISMD04  Auto 
Message Property VampireSunMessage Auto

GlobalVariable Property VampireSunDamage Auto
GlobalVariable Property VampireSunDamageSpecial Auto
GlobalVariable Property VampireLightLevel Auto
GlobalVariable Property VampireLightLevelPenalties Auto
GlobalVariable Property EnableVampireBloodPoints Auto
GlobalVariable Property VampireBloodPoints Auto
GlobalVariable Property VampireGoingOutside Auto

GlobalVariable Property ShadowLightLevel Auto

Spell Property DLC1RevertForm Auto

Race Property DLC1VampireBeastRace Auto

Int property VampirismLevel Auto
Float property SunDamageTime Auto
Float Property HowMuchDamage Auto
Float Property SunDamageLightLevel Auto

Float BVShadowLL = 120.0

float Function GetCurrentHourOfDay() 
 
	SunDamageTime = Utility.GetCurrentGameTime()
	SunDamageTime -= Math.Floor(SunDamageTime) ; Remove "previous in-game days passed" bit
	SunDamageTime *= 24 ; Convert from fraction of a day to number of hours
	Return SunDamageTime
 
EndFunction

Event OnEffectStart(Actor akTarget, Actor akCaster)

	If aktarget == Game.GetPlayer()
		If Game.GetPlayer().GetRace() != DLC1VampireBeastRace  && VampireGoingOutside.GetValue() == 0
			VampireSunMessage.Show()
		EndIf
		If VampireGoingOutside.GetValue() == 0
			VampireSunlightISMD04.applyCrossFade(2.0)
			Int instanceID1 = MagVampireSunlight.Play(Game.GetPlayer())
			Sound.SetInstanceVolume(instanceID1, 0.5)			
		EndIf	
		;utility.WaitMenuMode(2.0)
		imageSpaceModifier.removeCrossFade()
		Game.GetPlayer().RemoveSpell(VampireBurnInSun10)
		Game.GetPlayer().RemoveSpell(VampireBurnInSun09)
		Game.GetPlayer().RemoveSpell(VampireBurnInSun08)
		Game.GetPlayer().RemoveSpell(VampireBurnInSun07)
		Game.GetPlayer().RemoveSpell(VampireBurnInSun06)		
		Game.GetPlayer().RemoveSpell(VampireBurnInSun05)
		Game.GetPlayer().RemoveSpell(VampireBurnInSun04)
		Game.GetPlayer().RemoveSpell(VampireBurnInSun03)
		Game.GetPlayer().RemoveSpell(VampireBurnInSun02)
		Game.GetPlayer().RemoveSpell(VampireBurnInSun01)
	EndIf
			
	GetCurrentHourOfDay()
	
	If 	(SunDamageTime >= 6 && SunDamageTime <= 19)
		If (VampireSunDamage.GetValue() == 10000)
			;VampireSunlightISMD04.applyCrossFade(2.0)
			If  Game.IsMovementControlsEnabled() && Game.IsFightingControlsEnabled() && Game.GetPlayer().GetCombatState() == 0
					Game.GetPlayer().AddSpell(VampireBurnInSun01, abVerbose = False)
			EndIf
		EndIf
	EndIf
	
	Utility.Wait(0.1)
	Game.GetPlayer().RemoveSpell(VampireBurnInSun01)
	
	If 	(SunDamageTime < 6 || SunDamageTime > 19)
		Game.GetPlayer().RemoveSpell(VampireBurnInSun10)
		Game.GetPlayer().RemoveSpell(VampireBurnInSun09)
		Game.GetPlayer().RemoveSpell(VampireBurnInSun08)
		Game.GetPlayer().RemoveSpell(VampireBurnInSun07)
		Game.GetPlayer().RemoveSpell(VampireBurnInSun06)		
		Game.GetPlayer().RemoveSpell(VampireBurnInSun05)
		Game.GetPlayer().RemoveSpell(VampireBurnInSun04)
		Game.GetPlayer().RemoveSpell(VampireBurnInSun03)
		Game.GetPlayer().RemoveSpell(VampireBurnInSun02)
		Game.GetPlayer().RemoveSpell(VampireBurnInSun01)	
	EndIf	
	
		RegisterforUpdate(3)
	
EndEvent

Event OnUpdate()

		SunDamageLightLevel = Game.GetPlayer().GetLightLevel()
		
		BVShadowLL = ShadowLightLevel.GetValue()
		
		If SunDamageLightLevel > 50 && SunDamageLightLevel <= BVShadowLL
			;HowMuchDamage = 1
		ElseIf SunDamageLightLevel > BVShadowLL
			HowMuchDamage = 2
		EndIf
		
						
	If 	(SunDamageTime >= 6 && SunDamageTime <= 19)

		If (VampireLightLevelPenalties.GetValue() == 0)
			If SunDamageLightLevel > (BVShadowLL + 40) ;100
				VampireLightLevel.SetValue(1)
				If Game.GetPlayer().GetRace() == DLC1VampireBeastRace
					DLC1RevertForm.Cast(Game.GetPlayer(), Game.GetPlayer())
				EndIf
			ElseIf SunDamageLightLevel <= (BVShadowLL + 40) ;100
				VampireLightLevel.SetValue(0)
			EndIf
		Else
			VampireLightLevel.SetValue(0)
		EndIf
			
		If (VampirismLevel == 5 && VampireSunDamage.GetValue() == 10000)
			;VampireSunlightISMD04.applyCrossFade(2.0)
			If  Game.IsMovementControlsEnabled() && Game.IsFightingControlsEnabled() && Game.GetPlayer().GetCombatState() == 0  && SunDamageLightLevel > BVShadowLL
				Game.GetPlayer().RemoveSpell(VampireBurnInSun10)
				Game.GetPlayer().RemoveSpell(VampireBurnInSun09)
				Game.GetPlayer().RemoveSpell(VampireBurnInSun08)
				Game.GetPlayer().RemoveSpell(VampireBurnInSun07)
				Game.GetPlayer().RemoveSpell(VampireBurnInSun06)		
				Game.GetPlayer().RemoveSpell(VampireBurnInSun05)
				Game.GetPlayer().RemoveSpell(VampireBurnInSun04)
				Game.GetPlayer().RemoveSpell(VampireBurnInSun03)
				Game.GetPlayer().RemoveSpell(VampireBurnInSun02)
				Game.GetPlayer().RemoveSpell(VampireBurnInSun01)
				If HowMuchDamage == 2
					Game.GetPlayer().AddSpell(VampireBurnInSun05, abVerbose = False)
					If EnableVampireBloodPoints.GetValue() == 10000
						VampireBloodPoints.SetValue((VampireBloodPoints.GetValue()) - 6)
					EndIf						
				ElseIf HowMuchDamage == 1
					Game.GetPlayer().AddSpell(VampireBurnInSun01, abVerbose = False)
				EndIf
			EndIf
		EndIf
			
		If (VampirismLevel == 5 && VampireSunDamage.GetValue() == 20000)
			;VampireSunlightISMD04.applyCrossFade(2.0)
			If  Game.IsMovementControlsEnabled() && Game.IsFightingControlsEnabled() && Game.GetPlayer().GetCombatState() == 0  && SunDamageLightLevel > BVShadowLL	
				Game.GetPlayer().RemoveSpell(VampireBurnInSun10)
				Game.GetPlayer().RemoveSpell(VampireBurnInSun09)
				Game.GetPlayer().RemoveSpell(VampireBurnInSun08)
				Game.GetPlayer().RemoveSpell(VampireBurnInSun07)
				Game.GetPlayer().RemoveSpell(VampireBurnInSun06)		
				Game.GetPlayer().RemoveSpell(VampireBurnInSun05)
				Game.GetPlayer().RemoveSpell(VampireBurnInSun04)
				Game.GetPlayer().RemoveSpell(VampireBurnInSun03)
				Game.GetPlayer().RemoveSpell(VampireBurnInSun02)
				Game.GetPlayer().RemoveSpell(VampireBurnInSun01)					
				If HowMuchDamage == 2
					Game.GetPlayer().AddSpell(VampireBurnInSun10, abVerbose = False)
					If EnableVampireBloodPoints.GetValue() == 10000
						VampireBloodPoints.SetValue((VampireBloodPoints.GetValue()) - 12)
					EndIf						
				ElseIf HowMuchDamage == 1
					Game.GetPlayer().AddSpell(VampireBurnInSun05, abVerbose = False)
				EndIf
			EndIf
		EndIf		
		
		
		
		If (VampirismLevel == 4 &&  VampireSunDamage.GetValue() == 10000)
			;VampireSunlightISMD04.applyCrossFade(2.0)
			If  Game.IsMovementControlsEnabled() && Game.IsFightingControlsEnabled() && Game.GetPlayer().GetCombatState() == 0  && SunDamageLightLevel > BVShadowLL	
				Game.GetPlayer().RemoveSpell(VampireBurnInSun10)
				Game.GetPlayer().RemoveSpell(VampireBurnInSun09)
				Game.GetPlayer().RemoveSpell(VampireBurnInSun08)
				Game.GetPlayer().RemoveSpell(VampireBurnInSun07)
				Game.GetPlayer().RemoveSpell(VampireBurnInSun06)		
				Game.GetPlayer().RemoveSpell(VampireBurnInSun05)
				Game.GetPlayer().RemoveSpell(VampireBurnInSun04)
				Game.GetPlayer().RemoveSpell(VampireBurnInSun03)
				Game.GetPlayer().RemoveSpell(VampireBurnInSun02)
				Game.GetPlayer().RemoveSpell(VampireBurnInSun01)					
				If HowMuchDamage == 2
					Game.GetPlayer().AddSpell(VampireBurnInSun04, abVerbose = False)
					If EnableVampireBloodPoints.GetValue() == 10000
						VampireBloodPoints.SetValue((VampireBloodPoints.GetValue()) - 14)
					EndIf						
				ElseIf HowMuchDamage == 1
					Game.GetPlayer().AddSpell(VampireBurnInSun02, abVerbose = False)
				EndIf
			EndIf
		EndIf
			
		If (VampirismLevel == 4 && VampireSunDamage.GetValue() == 20000)
			;VampireSunlightISMD04.applyCrossFade(2.0)
			If  Game.IsMovementControlsEnabled() && Game.IsFightingControlsEnabled() && Game.GetPlayer().GetCombatState() == 0  && SunDamageLightLevel > BVShadowLL	
				Game.GetPlayer().RemoveSpell(VampireBurnInSun10)
				Game.GetPlayer().RemoveSpell(VampireBurnInSun09)
				Game.GetPlayer().RemoveSpell(VampireBurnInSun08)
				Game.GetPlayer().RemoveSpell(VampireBurnInSun07)
				Game.GetPlayer().RemoveSpell(VampireBurnInSun06)		
				Game.GetPlayer().RemoveSpell(VampireBurnInSun05)
				Game.GetPlayer().RemoveSpell(VampireBurnInSun04)
				Game.GetPlayer().RemoveSpell(VampireBurnInSun03)
				Game.GetPlayer().RemoveSpell(VampireBurnInSun02)
				Game.GetPlayer().RemoveSpell(VampireBurnInSun01)					
				If HowMuchDamage == 2
					Game.GetPlayer().AddSpell(VampireBurnInSun09, abVerbose = False)
					If EnableVampireBloodPoints.GetValue() == 10000
						VampireBloodPoints.SetValue((VampireBloodPoints.GetValue()) - 28)
					EndIf					
				ElseIf HowMuchDamage == 1
					Game.GetPlayer().AddSpell(VampireBurnInSun04, abVerbose = False)
				EndIf
			EndIf
		EndIf					
				
				
				
		If (VampirismLevel == 3 && VampireSunDamage.GetValue() == 10000)
			;VampireSunlightISMD04.applyCrossFade(2.0)
			If  Game.IsMovementControlsEnabled() && Game.IsFightingControlsEnabled() && Game.GetPlayer().GetCombatState() == 0  && SunDamageLightLevel > BVShadowLL	
				Game.GetPlayer().RemoveSpell(VampireBurnInSun10)
				Game.GetPlayer().RemoveSpell(VampireBurnInSun09)
				Game.GetPlayer().RemoveSpell(VampireBurnInSun08)
				Game.GetPlayer().RemoveSpell(VampireBurnInSun07)
				Game.GetPlayer().RemoveSpell(VampireBurnInSun06)		
				Game.GetPlayer().RemoveSpell(VampireBurnInSun05)
				Game.GetPlayer().RemoveSpell(VampireBurnInSun04)
				Game.GetPlayer().RemoveSpell(VampireBurnInSun03)
				Game.GetPlayer().RemoveSpell(VampireBurnInSun02)
				Game.GetPlayer().RemoveSpell(VampireBurnInSun01)					
				If HowMuchDamage == 2 && VampireSunDamageSpecial.GetValue() <= 10000
					Game.GetPlayer().AddSpell(VampireBurnInSun03, abVerbose = False)
					If EnableVampireBloodPoints.GetValue() == 10000
						VampireBloodPoints.SetValue((VampireBloodPoints.GetValue()) - 10)
					EndIf										
				ElseIf HowMuchDamage == 1 && VampireSunDamageSpecial.GetValue() <= 10000
					Game.GetPlayer().AddSpell(VampireBurnInSun02, abVerbose = False)
				EndIf
			EndIf
		EndIf
			
		If (VampirismLevel == 3 && VampireSunDamage.GetValue() == 20000)
			;VampireSunlightISMD04.applyCrossFade(2.0)
			If  Game.IsMovementControlsEnabled() && Game.IsFightingControlsEnabled() && Game.GetPlayer().GetCombatState() == 0  && SunDamageLightLevel > BVShadowLL	
				Game.GetPlayer().RemoveSpell(VampireBurnInSun10)
				Game.GetPlayer().RemoveSpell(VampireBurnInSun09)
				Game.GetPlayer().RemoveSpell(VampireBurnInSun08)
				Game.GetPlayer().RemoveSpell(VampireBurnInSun07)
				Game.GetPlayer().RemoveSpell(VampireBurnInSun06)		
				Game.GetPlayer().RemoveSpell(VampireBurnInSun05)
				Game.GetPlayer().RemoveSpell(VampireBurnInSun04)
				Game.GetPlayer().RemoveSpell(VampireBurnInSun03)
				Game.GetPlayer().RemoveSpell(VampireBurnInSun02)
				Game.GetPlayer().RemoveSpell(VampireBurnInSun01)					
				If HowMuchDamage == 2 && VampireSunDamageSpecial.GetValue() <= 10000
					Game.GetPlayer().AddSpell(VampireBurnInSun08, abVerbose = False)
					If EnableVampireBloodPoints.GetValue() == 10000
						VampireBloodPoints.SetValue((VampireBloodPoints.GetValue()) - 20)
					EndIf							
				ElseIf HowMuchDamage == 1 && VampireSunDamageSpecial.GetValue() <= 10000
					Game.GetPlayer().AddSpell(VampireBurnInSun03, abVerbose = False)
				EndIf
			EndIf
		EndIf	
			
			
			
		If (VampirismLevel == 2 && VampireSunDamage.GetValue() == 10000)
			;VampireSunlightISMD04.applyCrossFade(2.0)
			If  Game.IsMovementControlsEnabled() && Game.IsFightingControlsEnabled() && Game.GetPlayer().GetCombatState() == 0  && SunDamageLightLevel > BVShadowLL	
				Game.GetPlayer().RemoveSpell(VampireBurnInSun10)
				Game.GetPlayer().RemoveSpell(VampireBurnInSun09)
				Game.GetPlayer().RemoveSpell(VampireBurnInSun08)
				Game.GetPlayer().RemoveSpell(VampireBurnInSun07)
				Game.GetPlayer().RemoveSpell(VampireBurnInSun06)		
				Game.GetPlayer().RemoveSpell(VampireBurnInSun05)
				Game.GetPlayer().RemoveSpell(VampireBurnInSun04)
				Game.GetPlayer().RemoveSpell(VampireBurnInSun03)
				Game.GetPlayer().RemoveSpell(VampireBurnInSun02)
				Game.GetPlayer().RemoveSpell(VampireBurnInSun01)					
				If HowMuchDamage == 2 && VampireSunDamageSpecial.GetValue() <= 10000
					Game.GetPlayer().AddSpell(VampireBurnInSun02, abVerbose = False)
					If EnableVampireBloodPoints.GetValue() == 10000
						VampireBloodPoints.SetValue((VampireBloodPoints.GetValue()) - 8)
					EndIf							
				ElseIf HowMuchDamage == 1 && VampireSunDamageSpecial.GetValue() <= 10000
					Game.GetPlayer().AddSpell(VampireBurnInSun01, abVerbose = False)
				EndIf
			EndIf
		EndIf
			
		if (VampirismLevel == 2 && VampireSunDamage.GetValue() == 20000)
			;VampireSunlightISMD04.applyCrossFade(2.0)
			If  Game.IsMovementControlsEnabled() && Game.IsFightingControlsEnabled() && Game.GetPlayer().GetCombatState() == 0  && SunDamageLightLevel > BVShadowLL	
				Game.GetPlayer().RemoveSpell(VampireBurnInSun10)
				Game.GetPlayer().RemoveSpell(VampireBurnInSun09)
				Game.GetPlayer().RemoveSpell(VampireBurnInSun08)
				Game.GetPlayer().RemoveSpell(VampireBurnInSun07)
				Game.GetPlayer().RemoveSpell(VampireBurnInSun06)		
				Game.GetPlayer().RemoveSpell(VampireBurnInSun05)
				Game.GetPlayer().RemoveSpell(VampireBurnInSun04)
				Game.GetPlayer().RemoveSpell(VampireBurnInSun03)
				Game.GetPlayer().RemoveSpell(VampireBurnInSun02)
				Game.GetPlayer().RemoveSpell(VampireBurnInSun01)					
				If HowMuchDamage == 2 && VampireSunDamageSpecial.GetValue() <= 10000
					Game.GetPlayer().AddSpell(VampireBurnInSun07, abVerbose = False)
					If EnableVampireBloodPoints.GetValue() == 10000
						VampireBloodPoints.SetValue((VampireBloodPoints.GetValue()) - 16)
					EndIf							
				ElseIf HowMuchDamage == 1 && VampireSunDamageSpecial.GetValue() <= 10000
					Game.GetPlayer().AddSpell(VampireBurnInSun02, abVerbose = False)
				EndIf
			EndIf
		EndIf		
		
		
		
		If (VampirismLevel == 1 && VampireSunDamage.GetValue() == 10000)
			;VampireSunlightISMD04.applyCrossFade(2.0)
			If  Game.IsMovementControlsEnabled() && Game.IsFightingControlsEnabled() && Game.GetPlayer().GetCombatState() == 0	&& SunDamageLightLevel > BVShadowLL
				Game.GetPlayer().RemoveSpell(VampireBurnInSun10)
				Game.GetPlayer().RemoveSpell(VampireBurnInSun09)
				Game.GetPlayer().RemoveSpell(VampireBurnInSun08)
				Game.GetPlayer().RemoveSpell(VampireBurnInSun07)
				Game.GetPlayer().RemoveSpell(VampireBurnInSun06)		
				Game.GetPlayer().RemoveSpell(VampireBurnInSun05)
				Game.GetPlayer().RemoveSpell(VampireBurnInSun04)
				Game.GetPlayer().RemoveSpell(VampireBurnInSun03)
				Game.GetPlayer().RemoveSpell(VampireBurnInSun02)
				Game.GetPlayer().RemoveSpell(VampireBurnInSun01)					
				If HowMuchDamage == 2 && VampireSunDamageSpecial.GetValue() == 0
					Game.GetPlayer().AddSpell(VampireBurnInSun01, abVerbose = False)
					If EnableVampireBloodPoints.GetValue() == 10000
						VampireBloodPoints.SetValue((VampireBloodPoints.GetValue()) - 6)
					EndIf
				ElseIf HowMuchDamage == 1 && VampireSunDamageSpecial.GetValue() == 0
					Game.GetPlayer().AddSpell(VampireBurnInSun01, abVerbose = False)					
				EndIf
			EndIf
		EndIf
			
		If (VampirismLevel == 1 && VampireSunDamage.GetValue() == 20000)
			;VampireSunlightISMD04.applyCrossFade(2.0)
			If  Game.IsMovementControlsEnabled() && Game.IsFightingControlsEnabled() && Game.GetPlayer().GetCombatState() == 0  && SunDamageLightLevel > BVShadowLL	
				Game.GetPlayer().RemoveSpell(VampireBurnInSun10)
				Game.GetPlayer().RemoveSpell(VampireBurnInSun09)
				Game.GetPlayer().RemoveSpell(VampireBurnInSun08)
				Game.GetPlayer().RemoveSpell(VampireBurnInSun07)
				Game.GetPlayer().RemoveSpell(VampireBurnInSun06)		
				Game.GetPlayer().RemoveSpell(VampireBurnInSun05)
				Game.GetPlayer().RemoveSpell(VampireBurnInSun04)
				Game.GetPlayer().RemoveSpell(VampireBurnInSun03)
				Game.GetPlayer().RemoveSpell(VampireBurnInSun02)
				Game.GetPlayer().RemoveSpell(VampireBurnInSun01)					
				If HowMuchDamage == 2 && VampireSunDamageSpecial.GetValue() == 0
					Game.GetPlayer().AddSpell(VampireBurnInSun06, abVerbose = False)
					If EnableVampireBloodPoints.GetValue() == 10000
						VampireBloodPoints.SetValue((VampireBloodPoints.GetValue()) - 12)
					EndIf							
				ElseIf HowMuchDamage == 1 && VampireSunDamageSpecial.GetValue() == 0
					Game.GetPlayer().AddSpell(VampireBurnInSun01, abVerbose = False)
				EndIf
			EndIf
		EndIf	
		
			Float PlayerShadeHealth = Game.GetPlayer().GetActorValuePercentage("Health")
			Float PlayerShadeStamina = Game.GetPlayer().GetActorValuePercentage("Stamina")			
		
		If SunDamageLightLevel <= BVShadowLL && HowMuchDamage >= 1

				Float ShadeTimeStart = Utility.GetCurrentGameTime()
				
				Game.GetPlayer().RemoveSpell(VampireBurnInSun10)
				Game.GetPlayer().RemoveSpell(VampireBurnInSun09)
				Game.GetPlayer().RemoveSpell(VampireBurnInSun08)
				Game.GetPlayer().RemoveSpell(VampireBurnInSun07)
				Game.GetPlayer().RemoveSpell(VampireBurnInSun06)		
				Game.GetPlayer().RemoveSpell(VampireBurnInSun05)
				Game.GetPlayer().RemoveSpell(VampireBurnInSun04)
				Game.GetPlayer().RemoveSpell(VampireBurnInSun03)
				Game.GetPlayer().RemoveSpell(VampireBurnInSun02)
				Game.GetPlayer().RemoveSpell(VampireBurnInSun01)
				
				Game.GetPlayer().RestoreActorValue("Health", 0.5)
				Game.GetPlayer().RestoreActorValue("Stamina", 1)				
				
		EndIf 

	EndIf

	If 	(SunDamageTime < 6 || SunDamageTime > 19)
		VampireLightLevel.SetValue(0)	
		Game.GetPlayer().RemoveSpell(VampireBurnInSun10)
		Game.GetPlayer().RemoveSpell(VampireBurnInSun09)
		Game.GetPlayer().RemoveSpell(VampireBurnInSun08)
		Game.GetPlayer().RemoveSpell(VampireBurnInSun07)
		Game.GetPlayer().RemoveSpell(VampireBurnInSun06)		
		Game.GetPlayer().RemoveSpell(VampireBurnInSun05)
		Game.GetPlayer().RemoveSpell(VampireBurnInSun04)
		Game.GetPlayer().RemoveSpell(VampireBurnInSun03)
		Game.GetPlayer().RemoveSpell(VampireBurnInSun02)
		Game.GetPlayer().RemoveSpell(VampireBurnInSun01)	
	EndIf		
	
EndEvent

Event OnEffectFinish(Actor akTarget, Actor akCaster)

		UnregisterforUpdate()
		HowMuchDamage = 0
		
		imageSpaceModifier.removeCrossFade(2.0)
		VampireLightLevel.SetValue(0)	
		Game.GetPlayer().RemoveSpell(VampireBurnInSun10)
		Game.GetPlayer().RemoveSpell(VampireBurnInSun09)
		Game.GetPlayer().RemoveSpell(VampireBurnInSun08)
		Game.GetPlayer().RemoveSpell(VampireBurnInSun07)
		Game.GetPlayer().RemoveSpell(VampireBurnInSun06)		
		Game.GetPlayer().RemoveSpell(VampireBurnInSun05)
		Game.GetPlayer().RemoveSpell(VampireBurnInSun04)
		Game.GetPlayer().RemoveSpell(VampireBurnInSun03)
		Game.GetPlayer().RemoveSpell(VampireBurnInSun02)
		Game.GetPlayer().RemoveSpell(VampireBurnInSun01)		
		
		utility.Wait(0.1)			
		UnregisterforUpdate()
	
EndEvent

		
Sound Property MagVampireSunlight Auto  
 
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
