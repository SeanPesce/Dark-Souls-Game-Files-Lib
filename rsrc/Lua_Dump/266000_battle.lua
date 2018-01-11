local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 3.2
local localScriptConfigVar2 = 5.5
local localScriptConfigVar3 = 7.5
local localScriptConfigVar4 = 0
local localScriptConfigVar5 = 3.3
local localScriptConfigVar6 = 0
local localScriptConfigVar7 = 0.8
local localScriptConfigVar8 = 0
local localScriptConfigVar9 = 0.8
Husi_Chef266000Battle_Activate = function(ai, goal)
   local func1_var2 = {}
   local func1_var3 = {}
   local func1_var4 = {}
   Common_Clear_Param(func1_var2, func1_var3, func1_var4)
   local func1_var5 = ai:GetDist(TARGET_ENE_0)
   if func1_var5 >= 8 then
      func1_var2[1] = 10
      func1_var2[2] = 5
      func1_var2[3] = 5
      func1_var2[4] = 5
      func1_var2[7] = 75
   elseif func1_var5 >= 4 then
      func1_var2[1] = 20
      func1_var2[2] = 20
      func1_var2[3] = 15
      func1_var2[4] = 15
      func1_var2[7] = 30
   else
      func1_var2[1] = 30
      func1_var2[2] = 20
      func1_var2[3] = 20
      func1_var2[4] = 30
      func1_var2[7] = 0
   end
   local func1_var6 = {localScriptConfigVar9, 0, 3007, DIST_Middle}
   func1_var4[1] = func1_var6
   func1_var6 = REGIST_FUNC
   func1_var6 = func1_var6(ai, goal, Husi_Chef266000_Act02)
   func1_var3[2] = func1_var6
   func1_var6 = {localScriptConfigVar5, 0, 3003, DIST_Middle}
   func1_var4[3] = func1_var6
   func1_var6 = REGIST_FUNC
   func1_var6 = func1_var6(ai, goal, Husi_Chef266000_Act04)
   func1_var3[4] = func1_var6
   func1_var6 = {localScriptConfigVar3, 0, 3002, DIST_Middle}
   func1_var4[7] = func1_var6
   func1_var6 = {0, 70, 5, 5, 5, 15}
   local func1_var7 = REGIST_FUNC(ai, goal, HumanCommon_ActAfter_AdjustSpace, func1_var6)
   Common_Battle_Activate(ai, goal, func1_var2, func1_var3, func1_var7, func1_var4)
end

Husi_Chef266000_Act02 = function(ai, goal, func2_param2)
   local func2_var3 = ai:GetDist(TARGET_ENE_0)
   local func2_var4 = ai:GetRandam_Int(1, 100)
   local func2_var5 = localScriptConfigVar1
   local func2_var6 = localScriptConfigVar1 + 2
   local func2_var7 = 0
   Approach_Act(ai, goal, func2_var5, func2_var6, func2_var7)
   if func2_var4 <= 10 then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
   elseif func2_var4 <= 30 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
   elseif func2_var4 <= 80 then
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3006, TARGET_ENE_0, DIST_Middle, 0)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Husi_Chef266000_Act04 = function(ai, goal, func3_param2)
   local func3_var3 = ai:GetDist(TARGET_ENE_0)
   local func3_var4 = ai:GetRandam_Int(1, 100)
   local func3_var5 = localScriptConfigVar7
   local func3_var6 = localScriptConfigVar7 + 2
   local func3_var7 = 0
   local func3_var8 = 3005
   local func3_var9 = DIST_Middle
   Approach_and_Attack_Act(ai, goal, func3_var5, func3_var6, func3_var7, func3_var8, func3_var9)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Husi_Chef266000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Husi_Chef266000Battle_Terminate = function(ai, goal)
end

Husi_Chef266000Battle_Interupt = function(ai, goal)
   local func6_var2 = ai:GetRandam_Int(1, 100)
   local func6_var3 = ai:GetRandam_Int(1, 100)
   local func6_var4 = ai:GetRandam_Int(1, 100)
   local func6_var5 = ai:GetDist(TARGET_ENE_0)
   local func6_var6 = 3
   local func6_var7 = 15
   local func6_var8 = 100
   local func6_var9 = 0
   local func6_var10 = 0
   local func6_var11 = 3
   if Damaged_Step(ai, goal, func6_var6, func6_var7, func6_var8, func6_var9, func6_var10, func6_var11) then
      return true
   end
   local func6_var12 = 2.6
   local func6_var13 = 50
   local func6_var14 = ai:GetRandam_Int(1, 100)
   if GuardBreak_Act(ai, goal, func6_var12, func6_var13) then
      if func6_var14 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local func6_var15 = 9.5
   local func6_var16 = 15
   local func6_var17 = ai:GetDist(TARGET_ENE_0)
   if UseItem_Act(ai, goal, func6_var15, func6_var16) then
      if func6_var17 >= 5.5 then
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, localScriptConfigVar3, TARGET_SELF, false, -1)
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, localScriptConfigVar1, TARGET_SELF, false, -1)
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local func6_var18 = 5.5
   local func6_var19 = 18
   local func6_var20 = 20
   local func6_var21 = 30
   local func6_var22 = ai:GetRandam_Int(1, 100)
   local func6_var23 = ai:GetRandam_Int(1, 100)
   local func6_var24 = Shoot_2dist(ai, goal, func6_var18, func6_var19, func6_var20, func6_var21)
   if func6_var24 == 1 then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, localScriptConfigVar1, TARGET_SELF, false, -1)
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      return true
   elseif func6_var24 == 2 then
      goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, localScriptConfigVar3, TARGET_SELF, false, -1)
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
      return true
   end
   local func6_var25 = 20
   local func6_var26 = 100
   local func6_var27 = 0
   local func6_var28 = 0
   local func6_var29 = 4
   if RebByOpGuard_Step(ai, goal, func6_var25, func6_var26, func6_var27, func6_var28, func6_var29) then
      return true
   end
   return false
end


