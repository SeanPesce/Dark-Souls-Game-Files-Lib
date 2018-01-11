local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 2
local localScriptConfigVar2 = 4
local localScriptConfigVar3 = 5.6
local localScriptConfigVar4 = 0
local localScriptConfigVar5 = 2.1
local localScriptConfigVar6 = 0
local localScriptConfigVar7 = 1.6
local localScriptConfigVar8 = 0
local localScriptConfigVar9 = 1.2
local JAR_EEL_DEAD = 11600900
local JAR_EEL_HOST_JOIN = 11605380
local JAR_EEL_GHOST_JOIN = 11605381
local JAR_EEL_FIGHT = 11605382
local JAR_EEL_BGM_START = 11605384
local JAR_EEL_BGM_STOP = 11605385
local JAR_EEL_DEBUG = 11605399
local JarEelID = 1600810
local PlayerID = 10000
local JarEelBossBarNameID = 2390
local JarEelBgmPlayRegion = 1602890
local JarEelBGM = 1603801
local JarEelLadderID = 1601140
local JarEelBossFightBeginTrigger = 1602897
local JarEelFogWallObjID = 1601890
local JarEelFogWallSfxID = 1601891
local JarEelFogWallButtonPressID = 1602898
local PlayerFogWallAnimation = 7410
local KeyToTheSealID = 2013
local KeyToTheSealItemLot = 1100
JarEel530000Battle_Activate = function(ai, goal)
   local actionChance = {}
   local action = {}
   local basicAttackConfig = {}
   Common_Clear_Param(actionChance, action, basicAttackConfig)
   local dist = ai:GetDist(TARGET_ENE_0)
   local event = ai:GetEventRequest()
   if not ai:IsEventFlag(JAR_EEL_HOST_JOIN) and not ai:IsEventFlag(JAR_EEL_GHOST_JOIN) then
      actionChance[1] = 100
      action[1] = REGIST_FUNC(ai, goal, JarEel530000_WalkAround)
      local adjustSpaceParams = {100, 60, 5, 5, 0, 15, 15}
      local adjustSpaceFunc = REGIST_FUNC(ai, goal, HumanCommon_ActAfter_AdjustSpace, adjustSpaceParams)
      Common_Battle_Activate(ai, goal, actionChance, action, adjustSpaceFunc, basicAttackConfig)
      return 
   end
   actionChance[10] = 0
   if dist >= 8 then
      actionChance[1] = 0
      actionChance[2] = 10
      actionChance[4] = 0
      actionChance[5] = 0
      actionChance[6] = 0
      actionChance[7] = 85
      actionChance[8] = 0
      actionChance[9] = 5
   elseif dist >= 5 then
      if ai:IsTargetGuard(TARGET_ENE_0) == true then
         actionChance[1] = 10
         actionChance[2] = 15
         actionChance[4] = 0
         actionChance[5] = 35
         actionChance[6] = 0
         actionChance[7] = 20
         actionChance[8] = 10
         actionChance[9] = 10
      else
         actionChance[1] = 5
         actionChance[2] = 30
         actionChance[4] = 0
         actionChance[5] = 0
         actionChance[6] = 0
         actionChance[7] = 35
         actionChance[8] = 5
         actionChance[9] = 14
      end
   elseif dist >= 3.5 then
      if ai:IsTargetGuard(TARGET_ENE_0) == true then
         actionChance[1] = 15
         actionChance[2] = 10
         actionChance[4] = 0
         actionChance[5] = 40
         actionChance[6] = 0
         actionChance[7] = 30
         actionChance[9] = 12
      else
         actionChance[1] = 15
         actionChance[2] = 35
         actionChance[4] = 0
         actionChance[5] = 0
         actionChance[6] = 0
         actionChance[7] = 15
         actionChance[8] = 10
         actionChance[9] = 15
      end
   elseif ai:IsTargetGuard(TARGET_ENE_0) == true then
      actionChance[1] = 10
      actionChance[2] = 5
      if dist <= 1 then
         actionChance[4] = 100
      else
         actionChance[4] = 0
      end
      actionChance[5] = 30
      actionChance[6] = 40
      actionChance[7] = 0
      actionChance[8] = 15
      actionChance[9] = 10
   else
      actionChance[10] = 6
      actionChance[1] = 5
      actionChance[2] = 15
      if dist <= 1 then
         actionChance[4] = 50
      else
         actionChance[4] = 0
      end
      actionChance[5] = 10
      actionChance[6] = 35
      actionChance[7] = 0
      actionChance[8] = 20
      actionChance[9] = 15
      actionChance[10] = 8
   end
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   basicAttackConfig[1] = {localScriptConfigVar9, 100, 3006, DIST_Near}
   action[2] = REGIST_FUNC(ai, goal, JarEel530000_Act02)
   action[4] = REGIST_FUNC(ai, goal, JarEel530000_Act04)
   action[5] = REGIST_FUNC(ai, goal, JarEel530000_Act05)
   action[6] = REGIST_FUNC(ai, goal, JarEel530000_Act06)
   action[8] = REGIST_FUNC(ai, goal, JarEel530000_Act08)
   action[10] = REGIST_FUNC(ai, goal, JarEel530000_Act10)
   basicAttackConfig[7] = {localScriptConfigVar3, 30, 3004, DIST_Near}
   basicAttackConfig[9] = {localScriptConfigVar5, 30, 30, 70, 3007, 3005, nil}
   local adjustSpaceParams = {100, 60, 5, 5, 0, 15, 15}
   local adjustSpaceFunc = REGIST_FUNC(ai, goal, HumanCommon_ActAfter_AdjustSpace, adjustSpaceParams)
   Common_Battle_Activate(ai, goal, actionChance, action, adjustSpaceFunc, basicAttackConfig)
end

JarEel530000_WalkAround = function(ai, goal, something)
   goal:AddSubGoal(GOAL_COMMON_WalkAround, -1, -1, 0, 0, 0)
end

JarEel530000_Act02 = function(ai, goal, something)
   local func2_var3 = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local func2_var5 = localScriptConfigVar1
   local func2_var6 = localScriptConfigVar1 + 2
   local func2_var7 = 30
   Approach_Act(ai, goal, func2_var5, func2_var6, func2_var7)
   if fate <= 5 then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
   elseif fate <= 15 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
   elseif fate <= 25 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      if ai:GetRandam_Int(1, 100) <= 75 then
         goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
      end
   elseif fate <= 35 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, DIST_Middle, 0)
   elseif fate <= 40 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
   end
   -- Tried to add an 'end' here but it's incorrect
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

JarEel530000_Act04 = function(ai, goal, func3_param2)
   local dist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local func3_var5 = localScriptConfigVar7
   local func3_var6 = localScriptConfigVar7 + 2
   local func3_var7 = 30
   Approach_Act(ai, goal, func3_var5, func3_var6, func3_var7)
   if fate <= 50 then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
   elseif fate <= 65 then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, DIST_Middle, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
   end
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

JarEel530000_Act05 = function(ai, goal, func3_param2)
   local dist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local func3_var5 = localScriptConfigVar7
   local func3_var6 = localScriptConfigVar7 + 2
   local func3_var7 = 30
   Approach_Act(ai, goal, func3_var5, func3_var6, func3_var7)
   if fate <= 65 then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3008, TARGET_ENE_0, DIST_Middle, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3008, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3009, TARGET_ENE_0, DIST_Middle, 0)
   end
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

JarEel530000_Act06 = function(ai, goal, func3_param2)
   local dist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local func3_var5 = localScriptConfigVar7
   local func3_var6 = localScriptConfigVar7 + 2
   local func3_var7 = 30
   Approach_Act(ai, goal, func3_var5, func3_var6, func3_var7)
   if fate <= 30 then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
   elseif fate <= 60 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3010, TARGET_ENE_0, DIST_Middle, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3010, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3011, TARGET_ENE_0, DIST_Middle, 0)
   end
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

JarEel530000_Act08 = function(ai, goal, func3_param2)
   local dist = ai:GetDist(TARGET_ENE_0)
   local fate = ai:GetRandam_Int(1, 100)
   local func3_var5 = localScriptConfigVar7
   local func3_var6 = localScriptConfigVar7 + 2
   local func3_var7 = 30
   Approach_Act(ai, goal, func3_var5, func3_var6, func3_var7)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3013, TARGET_ENE_0, DIST_Middle, 0)
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

JarEel530000_Act10 = function(ai, goal, func3_param2)
   goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 5, TARGET_ENE_0, 0.1, false, -1)
   goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3008, TARGET_ENE_0, DIST_Near, 0)
   goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3009, TARGET_ENE_0, DIST_Near, 0)
   goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, DIST_Near, 0)
   goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, DIST_Near, 0)
   goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, DIST_Near, 0)
end

JarEel530000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

JarEel530000Battle_Terminate = function(ai, goal)
end

JarEel530000Battle_Interupt = function(ai, goal)
   local func6_var2 = ai:GetRandam_Int(1, 100)
   local func6_var3 = ai:GetRandam_Int(1, 100)
   local func6_var4 = ai:GetRandam_Int(1, 100)
   local func6_var5 = ai:GetDist(TARGET_ENE_0)
   local func6_var6 = 3
   local func6_var7 = 15
   local func6_var8 = 20
   local func6_var9 = 60
   local func6_var10 = 20
   local func6_var11 = 20
   local func6_var12 = 3.5
   local func6_var13 = 50
   local func6_var14 = 25
   local func6_var15 = 4.5
   local func6_var16 = 2.5
   if FindAttack_Step_or_Guard(ai, goal, func6_var6, func6_var7, func6_var8, func6_var9, func6_var10, func6_var11, func6_var12, func6_var13, oddsSide, func6_var14, func6_var15, func6_var16) then
      return true
   end
   local func6_var17 = 3
   local func6_var18 = 25
   local func6_var19 = 20
   local func6_var20 = 60
   local func6_var21 = 20
   local func6_var22 = 20
   local func6_var23 = 3.5
   local func6_var24 = 50
   local func6_var25 = 25
   local func6_var26 = 4.5
   local func6_var27 = 2.5
   if Damaged_Step_or_Guard(ai, goal, func6_var17, func6_var18, func6_var19, func6_var20, func6_var21, func6_var22, func6_var23, func6_var24, oddsSide, func6_var25, func6_var26, func6_var27) then
      return true
   end
   local func6_var28 = 5.6
   local func6_var29 = 30
   if GuardBreak_Act(ai, goal, func6_var28, func6_var29) then
      if func6_var5 <= 1 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3012, TARGET_ENE_0, DIST_Middle, 0)
      elseif func6_var5 <= 2 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3007, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local func6_var30 = 5.6
   local func6_var31 = 30
   if MissSwing_Int(ai, goal, func6_var30, func6_var31) then
      if func6_var5 <= 2 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3007, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local func6_var32 = 5.6
   local func6_var33 = 60
   if UseItem_Act(ai, goal, func6_var32, func6_var33) then
      if func6_var5 <= 1 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3012, TARGET_ENE_0, DIST_Middle, 0)
      elseif func6_var5 <= 2 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, localScriptConfigVar3, TARGET_SELF, false, 9910)
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3007, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local func6_var34 = 5.6
   local func6_var35 = 18
   local func6_var36 = 0
   local func6_var37 = 50
   local func6_var38 = Shoot_2dist(ai, goal, func6_var34, func6_var35, func6_var36, func6_var37)
   if func6_var38 == 1 then
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, 9910)
      return true
   elseif func6_var38 == 2 then
      if func6_var2 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(30, 45), true, true, 9910)
         return true
      elseif func6_var2 <= 75 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
      end
      return true
   end
   local func6_var39 = 50
   local func6_var40 = 60
   local func6_var41 = 20
   local func6_var42 = 20
   local func6_var43 = 3.5
   if RebByOpGuard_Step(ai, goal, func6_var39, func6_var40, func6_var41, func6_var42, func6_var43) then
      return true
   end
   local func6_var44 = 5.6
   local func6_var45 = 60
   if SuccessGuard_Act(ai, goal, func6_var44, func6_var45) then
      if func6_var5 <= 2 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3007, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   return false
end


