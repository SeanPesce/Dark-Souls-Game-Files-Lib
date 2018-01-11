local localScriptConfigVar0 = 0
local localScriptConfigVar1 = 3.5
local localScriptConfigVar2 = 0
local localScriptConfigVar3 = 3.5
local localScriptConfigVar4 = 0
local localScriptConfigVar5 = 3.5
local localScriptConfigVar6 = 0
local localScriptConfigVar7 = 3.5
local localScriptConfigVar8 = 4
local localScriptConfigVar9 = 6.5
local localScriptConfigVar10 = 2
local localScriptConfigVar11 = 3
Nata224000Battle_Activate = function(ai, goal)
   local func1_var2 = {}
   local func1_var3 = {}
   local func1_var4 = {}
   Common_Clear_Param(func1_var2, func1_var3, func1_var4)
   local func1_var5 = ai:GetDist(TARGET_ENE_0)
   if func1_var5 >= 8 then
      func1_var2[1] = 0
      func1_var2[2] = 10
      func1_var2[3] = 0
      func1_var2[4] = 10
      func1_var2[7] = 80
      func1_var2[8] = 0
   elseif func1_var5 >= 4 then
      func1_var2[1] = 15
      func1_var2[2] = 25
      func1_var2[3] = 15
      func1_var2[4] = 25
      func1_var2[7] = 20
      func1_var2[8] = 0
   elseif func1_var5 >= 2 then
      func1_var2[1] = 20
      func1_var2[2] = 30
      func1_var2[3] = 20
      func1_var2[4] = 30
      func1_var2[7] = 0
      func1_var2[8] = 0
   else
      func1_var2[1] = 15
      func1_var2[2] = 20
      func1_var2[3] = 15
      func1_var2[4] = 20
      func1_var2[7] = 0
      func1_var2[8] = 30
   end
   func1_var3[1] = REGIST_FUNC(ai, goal, Nata224000_Act01)
   func1_var3[2] = REGIST_FUNC(ai, goal, Nata224000_Act02)
   local func1_var6 = {localScriptConfigVar5, 0, 3002, DIST_Middle}
   func1_var4[3] = func1_var6
   func1_var6 = REGIST_FUNC
   func1_var6 = func1_var6(ai, goal, Nata224000_Act04)
   func1_var3[4] = func1_var6
   func1_var6 = REGIST_FUNC
   func1_var6 = func1_var6(ai, goal, Nata224000_Act07)
   func1_var3[7] = func1_var6
   func1_var6 = REGIST_FUNC
   func1_var6 = func1_var6(ai, goal, Nata224000_Act08)
   func1_var3[8] = func1_var6
   func1_var6 = REGIST_FUNC
   func1_var6 = func1_var6(ai, goal, Nata224000_ActAfter_AdjustSpace)
   Common_Battle_Activate(ai, goal, func1_var2, func1_var3, func1_var6, func1_var4)
end

Nata224000_Act01 = function(ai, goal, func2_param2)
   local func2_var3 = ai:GetDist(TARGET_ENE_0)
   local func2_var4 = ai:GetRandam_Int(1, 100)
   local func2_var5 = localScriptConfigVar1
   local func2_var6 = localScriptConfigVar1 + 2
   local func2_var7 = 0
   Approach_Act(ai, goal, func2_var5, func2_var6, func2_var7)
   if func2_var4 <= 20 then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3000, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3001, TARGET_ENE_0, DIST_Middle, 0)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Nata224000_Act02 = function(ai, goal, func3_param2)
   local func3_var3 = ai:GetDist(TARGET_ENE_0)
   local func3_var4 = ai:GetRandam_Int(1, 100)
   local func3_var5 = localScriptConfigVar11
   local func3_var6 = localScriptConfigVar11 + 2
   local func3_var7 = 0
   local func3_var8 = 3005
   local func3_var9 = DIST_Middle
   Approach_and_Attack_Act(ai, goal, func3_var5, func3_var6, func3_var7, func3_var8, func3_var9)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Nata224000_Act04 = function(ai, goal, func4_param2)
   local func4_var3 = ai:GetDist(TARGET_ENE_0)
   local func4_var4 = ai:GetRandam_Int(1, 100)
   local func4_var5 = localScriptConfigVar7
   local func4_var6 = localScriptConfigVar7 + 2
   local func4_var7 = 0
   Approach_Act(ai, goal, func4_var5, func4_var6, func4_var7)
   if func4_var4 <= 20 then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
   else
      goal:AddSubGoal(GOAL_COMMON_ComboAttack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      goal:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, DIST_Middle, 0)
   end
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Nata224000_Act07 = function(ai, goal, func5_param2)
   local func5_var3 = ai:GetDist(TARGET_ENE_0)
   local func5_var4 = ai:GetRandam_Int(1, 100)
   local func5_var5 = localScriptConfigVar9
   local func5_var6 = localScriptConfigVar9 + 2
   local func5_var7 = 0
   local func5_var8 = 3004
   local func5_var9 = DIST_Middle
   Approach_and_Attack_Act(ai, goal, func5_var5, func5_var6, func5_var7, func5_var8, func5_var9)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Nata224000_Act08 = function(ai, goal, func6_param2)
   local func6_var3 = ai:GetDist(TARGET_ENE_0)
   local func6_var4 = ai:GetRandam_Int(1, 100)
   goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 701, TARGET_ENE_0, -1, AI_DIR_TYPE_B, 4)
   goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
   GetWellSpace_Odds = 100
   return GetWellSpace_Odds
end

Nata224000_ActAfter_AdjustSpace = function(ai, goal, func7_param2)
   local func7_var3 = ai:GetDist(TARGET_ENE_0)
   local func7_var4 = ai:GetRandam_Int(1, 100)
   local func7_var5 = ai:GetRandam_Int(1, 100)
   if func7_var4 <= 80 then
   elseif func7_var4 <= 90 then
      goal:AddSubGoal(GOAL_COMMON_SidewayMove, 2.5, TARGET_ENE_0, ai:GetRandam_Int(0, 1), ai:GetRandam_Int(15, 30), true, true, -1)
      return true
   elseif func7_var5 <= 50 then
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
   else
      goal:AddSubGoal(GOAL_COMMON_SpinStep, 10, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
   end
   return true
   return false
end

Nata224000Battle_Update = function(ai, goal)
   return GOAL_RESULT_Continue
end

Nata224000Battle_Terminate = function(ai, goal)
end

Nata224000Battle_Interupt = function(ai, goal)
   local func10_var2 = ai:GetDist(TARGET_ENE_0)
   local func10_var3 = ai:GetRandam_Int(1, 100)
   local func10_var4 = ai:GetRandam_Int(1, 100)
   local func10_var5 = 3
   local func10_var6 = 15
   local func10_var7 = 60
   local func10_var8 = 20
   local func10_var9 = 20
   if FindAttack_Step(ai, goal, func10_var5, func10_var6, func10_var7, func10_var8, func10_var9) then
      return true
   end
   local func10_var10 = 3
   local func10_var11 = 15
   local func10_var12 = 60
   local func10_var13 = 20
   local func10_var14 = 20
   local func10_var15 = 3.5
   if Damaged_Step(ai, goal, func10_var10, func10_var11, func10_var12, func10_var13, func10_var14, func10_var15) then
      return true
   end
   local func10_var16 = 8
   local func10_var17 = 30
   if GuardBreak_Act(ai, goal, func10_var16, func10_var17) then
      if func10_var2 <= 3.5 then
         if func10_var3 <= 50 then
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
         else
            goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
         end
         return true
      else
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, localScriptConfigVar9, TARGET_SELF, false, -1)
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local func10_var18 = 6.5
   local func10_var19 = 30
   local func10_var20 = 3003
   if MissSwing_Attack(ai, goal, func10_var18, func10_var19, func10_var20) then
      if func10_var2 <= 3.5 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local func10_var21 = 9
   local func10_var22 = 60
   if UseItem_Act(ai, goal, func10_var21, func10_var22) then
      if func10_var2 <= 3.5 then
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3003, TARGET_ENE_0, DIST_Middle, 0)
      else
         goal:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, localScriptConfigVar9, TARGET_SELF, false, -1)
         goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3004, TARGET_ENE_0, DIST_Middle, 0)
      end
      return true
   end
   local func10_var23 = 12
   local func10_var24 = 20
   local func10_var25 = 0
   local func10_var26 = 30
   local func10_var27 = Shoot_2dist(ai, goal, func10_var23, func10_var24, func10_var25, func10_var26)
   if func10_var27 == 1 then
      goal:AddSubGoal(GOAL_COMMON_Attack, 10, 3002, TARGET_ENE_0, DIST_Middle, 0)
   elseif func10_var27 == 2 then
      if func10_var3 <= 50 then
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 702, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 4)
      else
         goal:AddSubGoal(GOAL_COMMON_SpinStep, 5, 703, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 4)
      end
      return true
   end
   local func10_var28 = 50
   local func10_var29 = 60
   local func10_var30 = 20
   local func10_var31 = 20
   local func10_var32 = 3.5
   if RebByOpGuard_Step(ai, goal, func10_var28, func10_var29, func10_var30, func10_var31, func10_var32) then
      return true
   end
   return false
end


