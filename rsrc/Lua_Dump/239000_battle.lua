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
Darkwraith239000Battle_Activate = function(ai, goal)
   local func1_var2 = {}
   local func1_var3 = {}
   local func1_var4 = {}
   Common_Clear_Param(func1_var2, func1_var3, func1_var4)
   local func1_var5 = ai:GetDist(TARGET_ENE_0)
   if func1_var5 >= 8 then
      func1_var2[1] = 0
      func1_var2[2] = 10
      func1_var2[4] = 0
      func1_var2[7] = 85
      func1_var2[9] = 5
   elseif func1_var5 >= 5 then
      if ai:IsTargetGuard(TARGET_ENE_0) == true then
         func1_var2[1] = 10
         func1_var2[2] = 15
         func1_var2[4] = 35
         func1_var2[7] = 20
         func1_var2[9] = 20
      else
         func1_var2[1] = 5
         func1_var2[2] = 30
         func1_var2[4] = 0
         func1_var2[7] = 35
         func1_var2[9] = 25
      end
   elseif func1_var5 >= 3.5 then
      if ai:IsTargetGuard(TARGET_ENE_0) == true then
         func1_var2[1] = 15
         func1_var2[2] = 10
         func1_var2[4] = 40
         func1_var2[7] = 5
         func1_var2[9] = 30
      else
         func1_var2[1] = 15
         func1_var2[2] = 35
         func1_var2[4] = 0
         func1_var2[7] = 15
         func1_var2[9] = 35
      end
   elseif ai:IsTargetGuard(TARGET_ENE_0) == true then
      func1_var2[1] = 20
      func1_var2[2] = 10
      func1_var2[4] = 50
      func1_var2[7] = 0
      func1_var2[9] = 20
   else
      func1_var2[1] = 20
      func1_var2[2] = 35
      func1_var2[4] = 10
      func1_var2[7] = 0
      func1_var2[9] = 35
   end
   -- Tried to add an 'end' here but it's incorrect
   -- Tried to add an 'end' here but it's incorrect
   local func1_var6 = {localScriptConfigVar9, 100, 3008, DIST_Middle}
   func1_var4[1] = func1_var6
   func1_var6 = REGIST_FUNC
   func1_var6 = func1_var6(ai, goal, Darkwraith239000_Act02)
   func1_var3[2] = func1_var6
   func1_var6 = REGIST_FUNC
   func1_var6 = func1_var6(ai, goal, Darkwraith239000_Act04)
   func1_var3[4] = func1_var6
   func1_var6 = {localScriptConfigVar3, 30, 3004, DIST_Middle}
   func1_var4[7] = func1_var6
   func1_var6 = {localScriptConfigVar5, 30, 30, 70, 3005, 3006, nil}
   func1_var4[9] = func1_var6
   func1_var6 = {100, 60, 5, 5, 0, 15, 15}
   local func1_var7 = REGIST_FUNC(ai, goal, HumanCommon_ActAfter_AdjustSpace_IncludeSidestep, func1_var6)
   Common_Battle_Activate(ai, goal, func1_var2, func1_var3, func1_var7, func1_var4)
end

Darkwraith239000_Act02 = function(ai, goal, func2_param2)
   local func2_var3 = ai:GetDist(TARGET_ENE_0)
   local func2_var4 = ai:GetRandam_Int(1, 100)
   local func2_var5 = localScriptConfigVar1
   local func2_var6 = localScriptConfigVar1 + 2
   local func2_var7 = 30
   Approach_Act(ai, goal, func2_var5, func2_var6, func2_var7)
   if func2_var4 <= 5 then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
   elseif func2_var4 <= 15 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
   elseif func2_var4 <= 40 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Darkwraith239000_Act04 = function(ai, goal, func3_param2)
   local func3_var3 = ai:GetDist(TARGET_ENE_0)
   local func3_var4 = ai:GetRandam_Int(1, 100)
   local func3_var5 = localScriptConfigVar7
   local func3_var6 = localScriptConfigVar7 + 2
   local func3_var7 = 30
   Approach_Act(ai, goal, func3_var5, func3_var6, func3_var7)
   if func3_var4 <= 80 then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3007, TARGET_ENE_0, DIST_Middle, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3007, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
   end
   GetWellSpace_Odds = 0
   return GetWellSpace_Odds
end

Darkwraith239000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Darkwraith239000Battle_Terminate = function(ai, goal)
end

Darkwraith239000Battle_Interupt = function(ai, goal)
   if ai:IsLadderAct(TARGET_SELF) then
      return false
   end
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
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3008, TARGET_ENE_0, DIST_Middle, 0)
      elseif func6_var5 <= 2 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local func6_var30 = 5.6
   local func6_var31 = 30
   if MissSwing_Int(ai, goal, func6_var30, func6_var31) then
      if func6_var5 <= 2 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local func6_var32 = 5.6
   local func6_var33 = 60
   if UseItem_Act(ai, goal, func6_var32, func6_var33) then
      if func6_var5 <= 1 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3008, TARGET_ENE_0, DIST_Middle, 0)
      elseif func6_var5 <= 2 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, localScriptConfigVar3, TARGET_SELF, false, 9910)
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
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
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   return false
end


